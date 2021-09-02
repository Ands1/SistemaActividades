# frozen_string_literal: true

class Ability
  include CanCan::Ability
 
  def initialize(user)
    if user.role == "superadministrator"
      can :manage, :all
      
    elsif user.role == "member"
      can :read, :all
      can :create, :all
      can :update, :all
      #can :manage, Activity
      #cannot :destroy, Activity
      cannot :destroy, User
      can :destroy, Activity do |activity|
        activity.user == user
      end
    end


  end
end