class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :alt
      t.string :thumb_url
      t.string :small_url
      t.string :image_url
      t.string :large_url
    end
  end
end
