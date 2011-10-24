class Ability
  include CanCan::Ability

  def initialize(user,ip)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
    user ||= User.new
    if user.isAdmin? 
      can :manage,:all
    elsif user.isVip?
      can :login , User
      can :logout, User
      can :reg   , User
      can [:read,:index,:new,:create,:update,:destroy,:edit,:change,:show], User 
      can :manage, Com ,:user_id => user.id
      can :manage, Breed , :com_id => user.com_id
      can :manage, Diseasedesc,:com_id => user.com_id
      can :manage, Mating, :com_id => user.com_id
      can :manage, Piginfo, :com_id => user.com_id
      can :manage, Vaccine, :com_id => user.com_id
      can :manage, Disease, :com_id => user.com_id
    elsif user.isTrial?
      can :login,  User
      can :logout, User
      can :reg ,   User
      can [:index,:new,:create,:update,:destroy,:edit,:change,:show], User 
      can :manage, Com ,:user_id => user.id
      can :manage, Breed , :com_id => user.com_id
      can :manage, Diseasedesc,:com_id => user.com_id
      can :manage, Mating, :com_id => user.com_id
      can :manage, Piginfo, :com_id => user.com_id
      can :manage, Vaccine, :com_id => user.com_id
      can :manage, Disease, :com_id => user.com_id
    else
      can :login,User
      can :reg,  User
      can :logout,User
    end
 
  end
end
