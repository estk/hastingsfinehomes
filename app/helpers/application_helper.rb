module ApplicationHelper
  
  def title
      base_title = "The Hastings Company"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
    end
    
end
