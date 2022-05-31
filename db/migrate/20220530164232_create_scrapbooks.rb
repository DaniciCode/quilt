class CreateScrapbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :scrapbooks do |t|
      t.string :scrapbook_title
      t.text :scrapbook_description
      t.references :user, null: false, foreign_key: true
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
