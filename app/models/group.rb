class Group < ApplicationRecord
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    has_many :students
    has_many :lessons
end
