# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin == true # Assuming you have an 'admin' boolean column
      can :manage, :all
    end
  end
end
