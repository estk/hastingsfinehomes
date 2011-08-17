module FlickrHelper 
  FLICKR_ID = "66318963@N07"
  
  def render_flickr_slideshow
    rescue_flickr do
      photos = get_photo_tags('home')
      render :partial => '/flickr/slideshow', :locals => { :photos => photos }
    end
  end
  
  def render_flickr_projects
    rescue_flickr do
      photos = get_photo_tags('pilot')
      render :partial => '/flickr/projects', :locals => { :photos => photos }
    end
  end
  
  private
    
    def get_photo_tags(*tags)
      FlickRaw.api_key ||= "f21b3b897a9c08dd4f07f00ca4fdc3f4"
      FlickRaw.shared_secret ||= "c3ac43cfeb6841eb"
      flickr.photos.search(:user_id => FLICKR_ID, :tags => tags)
    end
    
    def rescue_flickr(&blk)
      blk.call
    rescue Exception => error
      render :partial => '/flickr/unavailable', :locals => { :error => error }
    end
end