class WineriesController < ApplicationController
    before_action :find_winery, only: [:show, :edit, :update, :destroy]
    
    def index
        @wineries = Winery.all
    end

    def show
        
    end

    def new
        @winery = Winery.new
    end

    def create
        @winery = Winery.new(winery_params)
        if @winery.save
            redirect_to wineries_path 
        else
            flash.now[:error] = @winery.errors.full_messages
            render :new
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

        def winery_params
            params.require(:winery).permit(:name, :website, :phone, region_attributes: [:name])
        end
end
