class WineriesController < ApplicationController
    before_action :find_winery, only: [:show]
    
    def index
        @wineries = Winery.all
    end

    def show
        
    end

    private
        def find_winery
            @winery = Winery.find_by_id(params[:id])
        end
end
