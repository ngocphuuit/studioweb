class AddServiceToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_reference :albums, :service, foreign_key: true
  end
end
