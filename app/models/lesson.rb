class Lesson < ApplicationRecord
    validates :day, :hour, :location, presence: true
    belongs_to :group
    belongs_to :teacher
    belongs_to :course

end
