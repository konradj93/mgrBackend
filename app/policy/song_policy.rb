class SongPolicy < ApplicationPolicy
  def manage?
    user? && user.role == 'admin'
  end
end
