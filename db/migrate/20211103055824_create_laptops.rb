class CreateLaptops < ActiveRecord::Migration[6.1]
  def change
    create_table :laptops do |t|
      t.string :name

      t.string :screen_resolution
      t.string :screen_cover_type
      t.string :scree_matrix_type
      t.float :screen_size
      t.string :screen_refresh_rate

      t.string :proccessor_name
      t.string :proccessor_serial
      t.string :proccessor_speed

      t.integer :ram_capacity
      t.string :disk_type
      t.integer :disk_size

      t.string :video_adapter_company
      t.string :video_adapter_type
      t.string :video_adapter_name
      t.integer :video_adapter_ram_size

      t.string :operating_system
      t.string :color

      t.float :weight

      t.float :price

      t.timestamps
    end
  end
end
