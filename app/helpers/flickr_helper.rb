module FlickrHelper 
  FLICKR_ID = "66318963@N07"
  
  def render_flickr_slideshow
    Rails.cache.fetch("flickr/slideshow", :expires_in => 5.minutes) do
      rescue_flickr do
        photos = get_photo_tags('home')
        render :partial => '/flickr/slideshow', :locals => { :photos => photos }
      end
    end
  end
  
  def render_flickr_projects
    Rails.cache.fetch("flickr/projects", :expires_in => 5.minutes) do
      rescue_flickr do
        photos = get_photo_tags('pilot')
        render :partial => '/flickr/projects', :locals => { :photos => photos }
      end
    end
  end

  def render_flickr_fancybox(tag)
    rescue_flickr do
      photos = get_photo_tags(tag)
      render :partial => '/flickr/fancybox', :locals => { :photos => photos }
    end
  end
  
  def get_photo_tags(*tags)
    FlickRaw.api_key ||= "f21b3b897a9c08dd4f07f00ca4fdc3f4"
    FlickRaw.shared_secret ||= "c3ac43cfeb6841eb"
    flickr.photos.search(:user_id => FLICKR_ID, :tags => tags, :extras => "description")
  end
  
  def get_contacts_image()
    FlickRaw.url_b(get_photo_tags("contacts-page").first)
  end
    
  private
    
    def rescue_flickr(&blk)
      blk.call
    rescue Exception => error
      render :partial => '/flickr/unavailable', :locals => { :error => error }
    end
end