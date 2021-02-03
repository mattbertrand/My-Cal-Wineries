module ApplicationHelper
    def render_nav_links
        content_tag("ul", class: "ight hide-on-med-and-down") do
        if true
                content_tag("li") do
                    link_to("Discover Wineries", wineries_path)
                end +
                content_tag("li") do
                    link_to("Add Winery", new_winery_path)
                end +
                content_tag("li") do
                    link_to("Logout", "#")
                end
        else
                content_tag("li") do
                    link_to("Login", "#")
                end +
                content_tag("li") do
                    link_to("Signup", "#")
                end
            end
        end
    end
end
