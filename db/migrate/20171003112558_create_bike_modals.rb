class CreateBikeModals < ActiveRecord::Migration[5.0]
  def change
    create_table :bike_modals do |t|
      t.string :name

      t.timestamps
    end
  end
end
