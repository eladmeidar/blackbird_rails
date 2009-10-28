module BlackBirdHelper
  
  # renders the blackbird CSS and Javascripts, if it's a devlopment env
  def black_bird_tag
    if Rails.env == "development"
      javascript_include_tag("blackbird")
      stylesheet_link_tag("blackbird")
    end
  end
end