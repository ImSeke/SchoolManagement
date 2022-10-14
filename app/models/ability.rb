# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, :all

  #  if user.is_a?(Admin)
   #   can :manage :all
    #elsif user.is_a?(Teacher)

    #elsif user.is_a?(Student)
    #end
  end
end
