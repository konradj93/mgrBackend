class ArtistPolicy < ApplicationPolicy
  def manage?
    user? && user.role == 'admin'
  end
end
