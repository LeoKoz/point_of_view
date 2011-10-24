module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Social Network with a Point of View"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
