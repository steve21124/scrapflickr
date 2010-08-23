class ScrapPhoto < ActiveRecord::Base
  belongs_to :keyword
  belongs_to :scrap_xml
end
