class CreateWebConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :web_configs do |t|
      t.string :option_key
      t.string :option_value

      t.timestamps
    end
  end
end
