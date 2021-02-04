class RegionsController < ApplicationController
    

    def index
        @regions = Region.all
    end

    def show
        @region = Region.find_by_id(params[:id])
    end
    
    def new
        @region = Region.new
        @region.wineries.build
        @region.wineries.build
        @region.wineries.build
    end

    def create
        @region = Region.new(region_params)

        if @region.save
            redirect_to wineries_path
        else
            render :new
        end
    end

    private
        def region_params
            params.require(:region).permit(:name, wineries_attributes: [:name, :website, :phone])
        end
end
