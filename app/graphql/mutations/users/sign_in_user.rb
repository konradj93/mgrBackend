# frozen_string_literal: true

module Mutations
  module Users
    class SignInUser < BaseMutation
      null true

      argument :email, String, required: true
      argument :password, String, required: true

      field :role, String, null: true
      field :user, Types::UserType, null: true

      def resolve(**attributes)
        login_hash = ::User.handle_login(attributes)
        if login_hash
        context[:cookie].signed[:jwt] = { value: login_hash[:token], httponly: true }
        { role: login_hash[:role] }
        else
          raise GraphQL::ExecutionError, 'Please try again'
        end
      end
    end
  end
end
