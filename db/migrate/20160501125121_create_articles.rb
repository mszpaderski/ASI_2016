class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :players_lvl
      t.text :post
        t.string :username

      t.timestamps
    end
  end
end
