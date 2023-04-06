class Strength < ApplicationRecord
    has_and_belongs_to_many :users, joint_table: "strengths_users"
end