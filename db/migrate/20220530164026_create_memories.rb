class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
