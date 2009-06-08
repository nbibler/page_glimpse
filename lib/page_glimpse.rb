$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

gem 'relax' #, '~>0.1.0'
require 'relax'
require 'cgi'

require 'page_glimpse/api'

module PageGlimpse
  
  ##
  # Sets the developer key to use with the requests.
  # 
  def self.developer_key=(key)
    @@developer_key = key
  end
  
  ##
  # Returns +true+ if the thumbnail exists on Page Glimpse, +false+ otherwise.
  # 
  def self.exist?(url, options = {})
    options[:url] = CGI.escape(url)
    response = api.exist?(options)
    response.kind_of?(Array) && response.size == 2 && response[1] == API::THUMBNAIL_EXISTS
  rescue RestClient::ResourceNotFound
    return false
  rescue RestClient::RequestFailed
    handle_failure($!)
  end
  
  ##
  # Returns the binary data for the thumbnail requested.
  # 
  # Valid options:
  # 
  # [size]
  #   Sets the size of the graphic to get from Page Glimpse.  
  #   Available options are:
  #   "<tt><b>small</b></tt>"::   <b>150x108 px</b>
  #   "<tt>medium</tt>"::  280x202 px
  #   "<tt>large</tt>"::   430x310 px
  # 
  # [nothumb]
  #   Indicates if the thumbnails for the domain root should be displayed. 
  #   If set to "<tt>no</tt>", it will display the not found image, otherwise 
  #   it will display the thumbnails for root domain page. 
  #   Default value is "<tt>yes</tt>".
  # 
  # [root]
  #   Indicates if the thumbnails for the domain root should be displayed. 
  #   If set to "<tt>no</tt>", it will display the not found image, otherwise 
  #   it will display the thumbnails for root domain page.
  #   Default value is "<tt>yes</tt>".
  # 
  def self.get(url, options = {})
    options[:url] = CGI.escape(url)
    api.thumbnail(options)
  rescue RestClient::RequestFailed
    handle_failure($!)
  end
  
  ##
  # Instructs Page Glimpse to enqueue the thumbnailing of a specific URL.
  # 
  def self.queue(url)
    response = api.queue(:url => CGI.escape(url))
    response.kind_of?(Array) && response.size == 2 && response[1] == API::QUEUE_SUCCESS
  rescue RestClient::RequestFailed
    handle_failure($!)
  end
  
  
  private
  
  
  def self.developer_key #:nodoc:
    @@developer_key ||= nil
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
