class ItemStorage < ApplicationRecord
  belongs_to :item
  belongs_to :item_place
end
