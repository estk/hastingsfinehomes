module ApplicationHelper
  
  def title
      base_title = "Hastings Fine Homes"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
    end
    
    # def logo
    #     image_tag("logo.png", :height => 75, :alt => "The Hastings Co.")
    # end
    
    def logo
      content_tag(:span, "HASTINGS FINE HOMES", class: "logo")
    end
end
