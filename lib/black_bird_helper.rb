module BlackBirdHelper
  
  # renders the blackbird CSS and Javascripts, if it's a devlopment env
  def include_black_bird
    if Rails.env == "development"
      javascript_include_tag("blackbird") + stylesheet_link_tag("blackbird")
    else
      "<script>var log = {toggle: function() {}, toggle: function() {}, debug:function () {}, info:function () {}, warn:function () {}, error:function () {}, profile:function () {}};</script>"
    end
  end
end