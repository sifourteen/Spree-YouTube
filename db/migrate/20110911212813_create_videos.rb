class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :spree_video do |t|
      t.string :youtube_ref
      t.integer :product_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :spree_video
  end
end
