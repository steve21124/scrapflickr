class RenameLisenceToLicenseOnScrapPhotos < ActiveRecord::Migration
  def self.up
    rename_column :scrap_photos, :lisence, :license
  end

  def self.down
    rename_column :scrap_photos, :license, :lisence
  end
end
