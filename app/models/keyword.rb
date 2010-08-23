class Keyword < ActiveRecord::Base
  has_many :scrap_xmls, :dependent => :destroy
  has_many :scrap_photos, :dependent => :destroy

  validates_presence_of :keyword_name
  validates_uniqueness_of :keyword_name
end
