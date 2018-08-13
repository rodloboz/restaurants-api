class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      byebug
      # Restaurant.all
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    !user.nil?
  end

  def update?
    # only the owner can update
    # record => is the instance passed into authorize (@restaurant)
    # user => current_user
    record.user == user
  end

  def destroy?
    update?
  end
end
