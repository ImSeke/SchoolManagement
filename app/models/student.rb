# frozen_string_literal: true

class Student < User
  validates :name, :email, presence: true
  belongs_to :group

  def schedule
    week = %w[Monday Tuesday Wednesday Thursday Friday]

    day = week[(Date.today.wday - 1)]

    Lesson.where(day:, group_id:).order(:hour)
  end

  def week_schedule
    Lesson.where(group_id: id).order(:hour)
  end

  def daily_schedule_email
    UserMailer.with(user: self).daily_schedule_email.deliver_now
  end

  private
  def welcome_email
    UserMailer.with(user: self).welcome_email.deliver.now
  end
end
