# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    # can :manage, :all

    case user
    when Admin
      can :manage, :all
    when Teacher
      teacher_can(user)
    when Student
      student_can(user)
    end
  end

  def teacher_can(user)
    can :index, Teacher
    can :show, Teacher, id: user.id
    can %i[edit update], Teacher, id: user.id
    can :manage, Lesson, teacher_id: user.id
    can %i[index show], Student
  end

  def student_can(user)
    can :index, Teacher
    can :index, Student
    can :show, Student, id: user.id
  end
end
