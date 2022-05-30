class CreateScrapbookMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :scrapbook_memories do |t|
      t.references :memory, null: false, foreign_key: true
      t.references :scrapbook, null: false, foreign_key: true

      t.timestamps
    end
  end
end
