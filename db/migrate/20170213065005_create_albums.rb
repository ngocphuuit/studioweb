class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.integer :status
      t.string :image
      t.boolean :top_flg

      t.timestamps
    end
  end
end
