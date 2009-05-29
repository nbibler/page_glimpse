require 'page_glimpse/image'

module PageGlimpse
  
  class ImageParser
    
    def initialize(options = {}, &block)
    end
    
    def parse(response)
      image = Image.new
      image.content_type    = response.headers[:content_type]
      image.filename        = parse_filename(response.headers[:content_disposition])
      image.content_length  = (response.headers[:content_length] || 0).to_i
      image.content         = response.to_s
      image
    end
    
    
    private
    
    
    def parse_filename(disposition)
      if disposition =~ /filename="([^"]*)"/i
        $1
      end
    end
    
  end
  
end
