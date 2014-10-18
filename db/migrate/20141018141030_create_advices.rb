class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.text :medical_text
      t.text :financial_text
      t.text :legal_text
      t.text :housing_text

      t.timestamps
    end
  end
end
