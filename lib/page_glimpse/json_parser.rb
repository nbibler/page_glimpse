gem 'json', '~> 1.1.6'
require 'json'

module PageGlimpse
  
  class JsonParser #:nodoc:
  
    def initialize(options = {}, &block)
    end
  
    def parse(response)
      JSON.parse response
    end
  
  end

end