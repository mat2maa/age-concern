class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :subtitle
      t.text :post_text
      t.datetime :start_date
      t.datetime :end_date
      t.string :main_image
      t.string :main_image_file_size
      t.string :main_image_content_type

      t.timestamps
    end
  end
end
