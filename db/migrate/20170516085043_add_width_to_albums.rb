class AddWidthToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :width, :integer
  end
end
