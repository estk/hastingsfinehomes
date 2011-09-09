class PagesController < ApplicationController
  
  def home
    @title = nil
  end

  def projects
    @title = 'Projects'
  end

  def testimonials
    @title = 'Testimonials'
  end

  def history
    @title = 'History'
  end

  def contact
    @title = 'Contact'
  end

  def resources
    @title = 'Resources'
  end

end
