class CreateScrapPhotos < ActiveRecord::Migration
  def self.up
    create_table :scrap_photos do |t|
      t.integer :keyword_id
      t.integer :scrap_xml_id
      t.string :title
      t.string :url_square
      t.string :url_thumbnail
      t.string :url_small
      t.string :url_medium
      t.string :url_large
      t.string :url_original
      t.string :description
      t.string :author
      t.string :lisence
      t.integer :original_id
      t.integer :status
      t.integer :selected_photo

      t.timestamps
    end
  end

  def self.down
    drop_table :scrap_photos
  end
end
