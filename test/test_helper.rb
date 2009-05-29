require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'fakeweb'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'mocks/page_glimpse'
require 'page_glimpse'

DEVELOPER_KEY = 'testdeveloperkey123'
PageGlimpse.developer_key = DEVELOPER_KEY
