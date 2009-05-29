module PageGlimpse
  
  class Image
    attr_accessor :content_type,
                  :content_length,
                  :content,
                  :filename
                  
    alias :body :content
  end
  
end
