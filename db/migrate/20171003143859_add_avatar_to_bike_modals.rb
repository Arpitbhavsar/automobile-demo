class AddAvatarToBikeModals < ActiveRecord::Migration[5.0]
  def change
    add_column :bike_modals, :image, :string
  end
end
