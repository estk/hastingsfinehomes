class PagesController < ApplicationController
  def home
    @title = nil
    
  end

  def projects
    @title = 'Projects'
  end

  def testimonials
    @title = 'Testamonials'
  end

  def history
    @title = 'History'
  end

  def contact
    @title = 'Contact'
  end

  def partners
    @title = 'Partners'
  end

end
