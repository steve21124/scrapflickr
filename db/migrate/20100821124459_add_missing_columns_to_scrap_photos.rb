class AddMissingColumnsToScrapPhotos < ActiveRecord::Migration
  def self.up
    add_column :scrap_photos, :secret, :string
    add_column :scrap_photos, :server, :string
    add_column :scrap_photos, :latitude, :string
    add_column :scrap_photos, :longitude, :string
    add_column :scrap_photos, :accuracy, :string
    add_column :scrap_photos, :place_id, :string
    add_column :scrap_photos, :woeid, :string
    add_column :scrap_photos, :farm, :string
    add_column :scrap_photos, :is_family, :string
    add_column :scrap_photos, :is_friend, :string
    add_column :scrap_photos, :is_public, :string
    add_column :scrap_photos, :tags, :string
  end

  def self.down
    remove_column :scrap_photos, :tags
    remove_column :scrap_photos, :is_public
    remove_column :scrap_photos, :is_friend
    remove_column :scrap_photos, :is_family
    remove_column :scrap_photos, :farm
    remove_column :scrap_photos, :woeid
    remove_column :scrap_photos, :place_id
    remove_column :scrap_photos, :accuracy
    remove_column :scrap_photos, :longitude
    remove_column :scrap_photos, :latitude
    remove_column :scrap_photos, :server
    remove_column :scrap_photos, :secret
  end
end
