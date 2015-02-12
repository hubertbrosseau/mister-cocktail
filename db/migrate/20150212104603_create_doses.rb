class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.string :description
      t.references :ingredient, index: true
      t.references :cocktail, index: true

      t.timestamps null: false
    end
    add_foreign_key :doses, :ingredients
    add_foreign_key :doses, :cocktails
  end
end
