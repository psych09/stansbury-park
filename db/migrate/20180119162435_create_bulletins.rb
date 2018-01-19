class CreateBulletins < ActiveRecord::Migration[5.0]
  def change
    create_table :bulletins do |t|
      t.string :title
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
