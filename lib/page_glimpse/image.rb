module PageGlimpse
  
  ##
  # An instance of this class is returned with a successful <tt>PageGlimpse.get</tt>
  # request.  This object wraps the information returned by Page Glimpse about
  # the thumbnail requested.
  # 
  class Image
    attr_accessor :content_type,
                  :content_length,
                  :content,
                  :filename
                  
    alias :body :content
  end
  
end
