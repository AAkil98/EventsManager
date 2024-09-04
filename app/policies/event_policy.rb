class EventPolicy < ApplicationPolicy
  # NOTE: Up to Pundit v2.3.1, the inheritance was declared as
  # `Scope < Scope` rather than `Scope < ApplicationPolicy::Scope`.
  # In most cases the behavior will be identical, but if updating existing
  # code, beware of possible changes to the ancestors:
  # https://gist.github.com/Burgestrand/4b4bc22f31c8a95c425fc0e30d7ef1f5
  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.admin?
        scope.all
      elsif user.owner?
        (scope.where(user: user)).or(scope.where(mode: "Public"))
      else
        scope.where(mode: "Public")
      end
    end
  end

  def show?
    true
  end

  def create?
    user.admin? || user.owner?
  end

  def update?
    (user.owner? && record.user == user) || user.admin?
  end

  def destroy?
    (user.owner? && record.user == user) || user.admin?
  end
end
