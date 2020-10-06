class AddTaxonToFruit < ActiveRecord::Migration[6.0]
  def change
    add_reference :fruits, :taxon, foreign_key: true
  end
end
