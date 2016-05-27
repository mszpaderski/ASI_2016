class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :players_lvl
      t.text :post
      t.references : :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
