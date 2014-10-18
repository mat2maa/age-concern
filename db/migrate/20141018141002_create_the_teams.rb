class CreateTheTeams < ActiveRecord::Migration
  def change
    create_table :the_teams do |t|
      t.text :trustees_text
      t.text :staff_text
      t.text :volunteers_text

      t.timestamps
    end
  end
end
