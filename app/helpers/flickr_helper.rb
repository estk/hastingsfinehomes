module FlickrHelper
  
  FLICKR_ID = "66318963@N07"
  
  def render_flickr_slideshow
  end
  
  def render_flickr_projects
  end
  
  private
    def flickr_auth
      FlickRaw.api_key ||= "f21b3b897a9c08dd4f07f00ca4fdc3f4"
      FlickRaw.shared_secret ||= "c3ac43cfeb6841eb"
    end
    
    def get_photo_tags(*tags)
      flickr_auth
      photos = flickr.photos.search(:user_id => FLICKR_ID, :tags => tags)
    end
  
end
