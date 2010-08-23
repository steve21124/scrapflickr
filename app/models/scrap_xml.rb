class ScrapXml < ActiveRecord::Base
  belongs_to :keyword
  has_many :scrap_photos, :dependent => :destroy
end
