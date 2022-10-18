# frozen_string_literal: true

class Lesson < ApplicationRecord
  validates :day, :hour, :location, presence: true
  belongs_to :group
  belongs_to :teacher
  belongs_to :course
  # validate :lesson_overlap

  def to_s
    "#{course.name} at #{hour.hour}:00 for #{group.name}"
  end

  private

  def lesson_overlap
    errors.add(:hour, "Overlapped with #{teacher.lessons.find_by(hour:, day:)} on day") unless teacher.lessons.find_by(hour:, day:).blank?
  end
end
