class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :body
      t.text :main_image
      t.text :thumb_image
      t.integer :position

      t.timestamps
    end
  end
end
