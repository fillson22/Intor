class CreateItemPlaces < ActiveRecord::Migration[8.1]
  def change
    create_table :item_places do |t|
      t.string :name

      t.timestamps
    end
  end
end
