class AddUserRefToUserStrengths < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_strengths, :strength, null: false, foreign_key: true
    add_reference :experiences, :user, null: false, foreign_key: true
  end
end
