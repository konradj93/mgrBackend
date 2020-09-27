class UserPolicy < ApplicationPolicy
  def manage?
    user? && user.role == 'admin'
  end
end
