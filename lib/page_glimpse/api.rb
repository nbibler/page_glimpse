require 'page_glimpse/exceptions'
require 'page_glimpse/image_parser'
require 'page_glimpse/json_parser'

module PageGlimpse
  
  class API < Relax::Service #:nodoc:
    
    THUMBNAIL_EXISTS  = 'yes'
    QUEUE_SUCCESS     = 'success'
    
    defaults do
      parameter :devkey,  :required => true
      parameter :url,     :required => true
    end
    
    endpoint 'http://images.pageglimpse.com/v1' do
      
      action :thumbnail,  :url => '/thumbnails' do
        parameter :size
        parameter :root
        parameter :nothumb
        
        parser ImageParser do
        end
      end
      
      action :queue,      :url => '/thumbnails/request' do
        parser JsonParser do
        end
      end
      
      action :exist?,    :url => '/thumbnails/exists' do
        parameter :size
        
        parser JsonParser do
        end
      end
      
    end
    
  end
  
end
