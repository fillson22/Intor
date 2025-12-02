class Item < ApplicationRecord
  has_many :item_storages, dependent: :destroy #містить зв'язок з проміжною таблицею
  has_many :item_places, through: :item_storages #зв'язок з місцями зберігання через проміжну таблицю

  serialize :history, coder: JSON, type: Array

end
