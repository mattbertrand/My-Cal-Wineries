module ApplicationHelper
    def render_nav_links
        content_tag("ul", class: "right hide-on-med-and-down") do
        if true
                content_tag("li") do
                    link_to("Discover Wineries", wineries_path)
                end +
                content_tag("li") do
                    link_to("Add Winery", new_winery_path)
                end +
                content_tag("li") do
                    link_to("Logout", destroy_user_session_path, method: 'delete')
                end
        else
                content_tag("li") do
                    link_to("Login", new_user_session_path)
                end +
                content_tag("li") do
                    link_to("Signup", new_user_registration_path)
                end
            end
        end
    end
end
