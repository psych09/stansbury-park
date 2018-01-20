class AddSlugToBulletins < ActiveRecord::Migration[5.0]
  def change
    add_column :bulletins, :slug, :string
    add_index :bulletins, :slug, unique: true
  end
end
