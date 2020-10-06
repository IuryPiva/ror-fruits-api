class Fruit < ApplicationRecord
    belongs_to :taxon
    belongs_to :image
end