class ItemPlace < ApplicationRecord
has_many :item_storages, dependent: :destroy
has_many :items, through: :item_storages

end
