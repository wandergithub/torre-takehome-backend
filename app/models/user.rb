class User < ApplicationRecord
    has_and_belongs_to_many :strengths, joint_table: "strengths_users"
    has_many :experiences
end