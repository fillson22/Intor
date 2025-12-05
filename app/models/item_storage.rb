class ItemStorage < ApplicationRecord
  belongs_to :item
  belongs_to :item_place

  validates :item_id, presence: true
  validates :item_place_id, presence: true
  validates :item_id, uniqueness: { scope: :item_place_id, message: "Ця річ вже знаходиться в цьому місці" }
   
end
