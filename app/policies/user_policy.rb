class UserPolicy < ApplicationPolicy

  def create?
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  def edit?
    user_is_lawyer?
  end

  def update?
    user_is_lawyer?
  end

  def destroy?
    user_is_lawyer?
  end

  private

  def user_is_lawyer?
    user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end


end
