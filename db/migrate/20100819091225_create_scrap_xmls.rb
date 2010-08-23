class CreateScrapXmls < ActiveRecord::Migration
  def self.up
    create_table :scrap_xmls do |t|
      t.integer :keyword_id
      t.string :xml_file
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :scrap_xmls
  end
end
