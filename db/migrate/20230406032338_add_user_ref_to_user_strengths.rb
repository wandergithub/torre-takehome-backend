class AddUserRefToUserStrengths < ActiveRecord::Migration[7.0]
  def change
    add_reference :experiences, :user, null: false, foreign_key: true
    add_reference :users, :user_strengths, null: false, foreign_key: true
    add_reference :strengths, :user_strengths, null: false, foreign_key: true
  end
end
