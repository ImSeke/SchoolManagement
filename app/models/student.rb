# frozen_string_literal: true

class Student < User
  validates :name, :email, presence: true
  belongs_to :group

  def schedule
    week = %w[Monday Tuesday Wednesday Thursday Friday]

    day = week[(Date.today.wday - 1)]

    Lesson.where(day:, group_id:).order(:hour)
  end
end
