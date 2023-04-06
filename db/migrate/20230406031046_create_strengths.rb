class CreateStrengths < ActiveRecord::Migration[7.0]
  def change
    create_table :strengths do |t|
      t.string :name
      t.string :proficiency
      t.integer :recommendations

      t.timestamps
    end
  end
end
