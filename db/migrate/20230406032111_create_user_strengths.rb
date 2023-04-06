class CreateUserStrengths < ActiveRecord::Migration[7.0]
  def change
    create_table :user_strengths do |t|

      t.timestamps
    end

    add_reference :user_strengths, :user, null: false, foreign_key: true
    add_reference :user_strengths, :strength, null: false, foreign_key: true
  end
end
