class CreateWhatWeOffers < ActiveRecord::Migration
  def change
    create_table :what_we_offers do |t|
      t.text :activities_text
      t.text :groups_text

      t.timestamps
    end
  end
end
