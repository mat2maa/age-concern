class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :text
      t.string :first_name
      t.string :surname
      t.string :type
      t.string :address_line_1
      t.string :address_line_2
      t.string :town
      t.string :postcode
      t.string :county
      t.string :tel
      t.string :email_1
      t.string :email_2
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
