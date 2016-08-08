module Spree
  class Video < ActiveRecord::Base
    belongs_to :watchable, :polymorphic => true, :touch => true

    # attr_accessible :youtube_ref
    validates_presence_of :youtube_ref
    validates_uniqueness_of :youtube_ref, :scope => [:watchable_id, :watchable_type]
    Yt.configure do |config|
      config.log_level = :debug
      config.client_id =
      config.client_secret =
      config.api_key =

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