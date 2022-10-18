# frozen_string_literal: true

class Teacher < User
  validates :name, :email, presence: true
  has_many :lessons

  def schedule
    week = %w[Monday Tuesday Wednesday Thursday Friday]

    day = week[(Date.today.wday - 1)]

    Lesson.where(day:, teacher_id: id).order(:hour)
  end

  def week_schedule
    Lesson.where(teacher_id: id).order(:hour)
  end
end
