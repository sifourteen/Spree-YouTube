module Spree
  class Video < ActiveRecord::Base
    belongs_to :watchable, :polymorphic => true, :touch => true

    # attr_accessible :youtube_ref
    validates_presence_of :youtube_ref
    validates_uniqueness_of :youtube_ref, :scope => [:watchable_id, :watchable_type]
    Yt.configure do |config|
      config.log_level = :debug
      config.client_id = '315306820128-3ca6u5ott2a2jqaqtr4jhmbih16j8iks.apps.googleusercontent.com'
      config.client_secret = 'kGaAu9H9zI2GqoA_xqWrwydu'
      config.api_key = 'AIzaSyA1zLM9SM1_SFlgCJGe3HHmNzmfg8-pPlg'

    end
    def youtube_data vid_id
      # puts youtube_ref, "HEEEEEEEEEE"
      Yt::Video.new id: vid_id
    end

    after_validation do
      youtube_ref.match(/(v=|\/)([\w-]+)(&.+)?$/) { |m| self.youtube_ref = m[2] }
    end
  end
end