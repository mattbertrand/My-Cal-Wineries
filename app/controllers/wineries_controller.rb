class WineriesController < ApplicationController
    before_action :find_winery, only: [:show]
    
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
            render :new
        end
    end

    private
        def find_winery
            @winery = Winery.find_by_id(params[:id])
        end

        def winery_params
            params.require(:winery).permit(:name, :website, :phone)
        end
end
