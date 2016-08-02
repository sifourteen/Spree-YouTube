require 'spree_core'
require 'youtube_it'
require 'spree/videos/configuration'
require 'spree_custom_checkout/engine'


module Spree
  module Videos
    class Engine < Rails::Engine
      engine_name 'spree_videos'

      config.autoload_paths += %W(#{config.root}/lib)

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
          Rails.env.production? ? require(c) : load(c)
        end
      end

      config.to_prepare &method(:activate).to_proc
    end
  end
end