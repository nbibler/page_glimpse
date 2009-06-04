module PageGlimpse
  
  ##
  # Catch-all exception for anything raised by the PageGlimpse library.
  # 
  class Exception < RuntimeError; end
  
  class InvalidDeveloperKeyError < Exception #:nodoc:
  end
  
end
