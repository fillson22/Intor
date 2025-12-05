class CreateItemStorages < ActiveRecord::Migration[8.1]
  def change
    create_table :item_storages do |t|
      t.references :item, null: false, foreign_key: true
      t.references :item_place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
