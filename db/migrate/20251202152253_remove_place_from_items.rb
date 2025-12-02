class RemovePlaceFromItems < ActiveRecord::Migration[8.1]
  def change
    remove_column :items, :place, :text
  end
end
