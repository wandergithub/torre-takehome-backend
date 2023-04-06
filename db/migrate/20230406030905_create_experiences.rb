class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :organization
      t.string :fromMonth
      t.integer :fromYear

      t.timestamps
    end
  end
end
