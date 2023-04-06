class User < ApplicationRecord
    has_and_belongs_to_many :strengths
    has_many :experiences
end