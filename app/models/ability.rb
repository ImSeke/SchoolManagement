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
      can :index, Teacher
      can :show, Teacher, id: user.id
      can %i[edit update], Teacher, id: user.id
      can :manage, Lesson, teacher_id: user.id
      can %i[index show], Student
    when Student
      can :index, Student
      can :show, Student, id: user.id
    end
  end
end
