$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

gem 'relax' #, '~>0.1.0'
require 'relax'

require 'page_glimpse/api'

module PageGlimpse
  
  THUMBNAIL_EXISTS  = 'yes'
  QUEUE_SUCCESS     = 'success'
  
  ##
  # Sets the developer key to use with the requests.
  # 
  def self.developer_key=(key)
    @@developer_key = key
  end
  
  ##
  # Returns +true+ if the thumbnail exists on PageGlimpse, +false+ otherwise.
  # 
  def self.exists?(url, options = {})
    options[:url] = url
    response = api.exists?(options)
    response.kind_of?(Array) && response.size == 2 && response[1] == THUMBNAIL_EXISTS
  rescue RestClient::ResourceNotFound
    return false
  rescue RestClient::RequestFailed
    handle_failure($!)
  end
  
  ##
  # Returns the binary data for the thumbnail requested.
  # 
  def self.get(url, options = {})
    options[:url] = url
    exists?(url, options) ? api.thumbnail(options) : nil
  rescue RestClient::RequestFailed
    handle_failure($!)
  end
  
  def self.queue(url)
    response = api.queue(:url => url)
    response.kind_of?(Array) && response.size == 2 && response[1] == QUEUE_SUCCESS
  rescue RestClient::RequestFailed
    handle_failure($!)
  end
  
  
  private
  
  
  def self.developer_key #:nodoc:
    @@developer_key
  end
  
  def self.api #:nodoc:
    @@api ||= API.new(:devkey => self.developer_key)
  end
  
  def self.handle_failure(exception)
    raise exception unless exception.respond_to?(:http_code)
    case exception.http_code
    when 403
      raise InvalidDeveloperKeyError, "Check your developer key: it was either mistyped or has been invalidated"
    else
      raise exception
    end
  end
  
end
