class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    if user.has_role? 'admin'
      can :manage, :all
    else
    	can :manage, :all
      can :read, :all
      can :create, Theme
      can :update, Theme do |theme|
        theme.try(:user) == user || user.has_role?('moderator')
    	end
  	end
  end
end