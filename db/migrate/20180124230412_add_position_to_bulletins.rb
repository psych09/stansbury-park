class AddPositionToBulletins < ActiveRecord::Migration[5.0]
  def change
    add_column :bulletins, :position, :integer
  end
end
