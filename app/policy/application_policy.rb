class ApplicationPolicy < ActionPolicy::Base
  authorize :user, allow_nil: true
  def user?
    @user.present?
  end
end
