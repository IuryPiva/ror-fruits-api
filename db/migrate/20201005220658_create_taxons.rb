class CreateTaxons < ActiveRecord::Migration[6.0]
  def change
    create_table :taxons do |t|
      t.string :name
      t.string :permalink
    end
  end
end
