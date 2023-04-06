class AddExperienceRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :experience, null: true, foreign_key: true
  end
end
