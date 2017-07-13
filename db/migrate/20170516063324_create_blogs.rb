class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :image
      t.boolean :top_flg
      t.text :status

      t.timestamps
    end
  end
end
