class WineriesController < ApplicationController
    before_action :find_region, only: [:index, :new, :create]
    before_action :find_winery, only: [:show, :edit, :update, :destroy]
    
    def index
        @wineries = Winery.all
    end

    def show
        
    end

    def new
        if @region
            @winery = @region.wineries.build
            render :new_region_winery
        else
            @winery = Winery.new
        end
    end

    def create
        @winery = Winery.new(winery_params)
        if @winery.save
            redirect_to wineries_path 
        else

            flash.now[:error] = @winery.errors.full_messages
            
            if @region
                render :new_region_winery
            else
                render :new
            end
        end
    end

    def edit

    end

    def update
        if @winery.update(winery_params)
            redirect_to winery_path(@winery)
        else
            flash.now[:error] = @winery.errors.full_messages
            render :edit
        end
    end

    def destroy
        @winery.destroy
        flash[:notice] = "#{@winery.name} was deleted."
        redirect_to wineries_path
    end

    private
        def find_winery
            @winery = Winery.find_by_id(params[:id])
        end

        def find_region
            if params[:region_id]
                @region = Region.find_by_id(params[:region_id])
            end
        end

        def winery_params
            params.require(:winery).permit(:name, :region_id, :website, :phone, region_attributes: [:name])
        end
end
