# frozen_string_literal: true

class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :posts
  attributes :first_name, :last_name, :email, :role
end
