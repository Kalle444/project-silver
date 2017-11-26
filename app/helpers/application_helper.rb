module ApplicationHelper

  def active_class(link_path)
   current_page?(link_path) ? "navbar-link-active" : ""
  end
end
