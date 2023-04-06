class CreateUserStrengths < ActiveRecord::Migration[7.0]
  def change
    create_table :strengths_users do |t|
      t.belongs_to :user
      t.belongs_to :strength
      t.timestamps
    end
  end
end
