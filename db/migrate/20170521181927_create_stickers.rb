class CreateStickers < ActiveRecord::Migration[5.1]
  def change
    create_table :stickers do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
