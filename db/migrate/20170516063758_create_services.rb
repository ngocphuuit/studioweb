class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :image
      t.boolean :top_flg
      t.text :status
      t.string :prio_flg

      t.timestamps
    end
  end
end
