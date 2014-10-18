class CreateYourSupports < ActiveRecord::Migration
  def change
    create_table :your_supports do |t|
      t.text :text

      t.timestamps
    end
  end
end
