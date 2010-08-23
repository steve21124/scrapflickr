class CreateKeywords < ActiveRecord::Migration
  def self.up
    create_table :keywords do |t|
      t.string :keyword_name
      t.string :keyword_sanitize
      t.string :source
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :keywords
  end
end
