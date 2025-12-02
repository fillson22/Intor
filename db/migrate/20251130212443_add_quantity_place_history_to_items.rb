class AddQuantityPlaceHistoryToItems < ActiveRecord::Migration[8.1]
  def change
    add_column :items, :quantity, :decimal, precision: 6, scale: 2, comment: "Кількість речей, precision: 6 - цифр всього разом, scale: 2 - кількість після коми"
    add_column :items, :place, :text, comment: "місце знаходження речі, буде масив місць"
    add_column :items, :history, :text, comment: "Історія пересування речі"
  end
end
