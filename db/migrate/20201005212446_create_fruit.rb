class CreateFruit < ActiveRecord::Migration[6.0]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :permalink
      t.string :description
      t.string :price
      t.string :unit_to_display
      t.integer :unit_value
      t.integer :on_hand
    end
  end
end
