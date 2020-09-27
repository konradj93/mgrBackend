# frozen_string_literal: true

module Mutations
  module Users
    class LogOutUser < BaseMutation
      null true

      field :message, String, null: true
      def resolve
        user = context[:current_user]
        if user
          context[:cookie].delete(:jwt)
          { message: 'Logout Successfully' }
        else
          { message: 'Cannot Logout' }
        end

      end
    end
  end
end

