require 'test_helper'

class PageGlimpseTest < Test::Unit::TestCase
  
  context 'PageGlimpse' do
    
    context 'exists?' do
      
      should 'be true for thumbnails which exist' do
        assert PageGlimpse.exists?('http://goodurl.local/', :size => 'large')
      end

      should 'be false for thumbnails which do not exist' do
        assert !PageGlimpse.exists?('http://badurl.local/', :size => 'large')
      end
      
    end
    
    context 'get' do
      
      context 'with a thumbnail available' do
        
        setup do
          @thumbnail = PageGlimpse.get('http://goodurl.local/', :size => 'large')
        end
        
        should 'return an Image' do
          assert_kind_of PageGlimpse::Image, @thumbnail
        end

        should 'have a content type' do
          assert_equal 'image/jpeg', @thumbnail.content_type
        end

        should 'have a content length' do
          assert_equal 3124, @thumbnail.content_length
        end

        should 'have content' do
          assert_not_nil @thumbnail.content
        end

        should 'have a filename' do
          assert_equal 'invalid_devkey.150x108.jpg', @thumbnail.filename
        end
        
      end
      
      context 'with no thumbnail available' do
        
        should 'return nil' do
          assert_nil PageGlimpse.get('http://badurl.local/', :size => 'large')
        end
        
      end
      
    end
    
    context 'queue' do
      
      should 'return true' do
        assert PageGlimpse.queue('http://goodurl.local/')
      end
      
    end
    
  end
  
end
