# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  def self.handle_login(params)
    hashParams = HashWithIndifferentAccess.new(params)
    user = User.find_by(email: hashParams['email'])
    return false unless user&.authenticate(hashParams['password'])

    {
      token: CoreModules::JsonWebToken.encode({ user_id: user.id }, 4.hours.from_now),
      user_id: user.id,
      role: user.role
    }
  end
end
