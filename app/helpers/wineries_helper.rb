module WineriesHelper
    def region_name(winery)
        if winery.region
            winery.region.name
        else
            link_to "Add Region"
        end
    end
end
