class AddUserRefToUserStrengths < ActiveRecord::Migration[7.0]
  def change
    add_reference :experiences, :user, null: false, foreign_key: true
    add_reference :users, :strengths_users, null: true, foreign_key: true
    add_reference :strengths, :strengths_users, null: true, foreign_key: true
  end
end
