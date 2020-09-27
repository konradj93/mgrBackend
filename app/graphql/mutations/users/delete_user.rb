# frozen_string_literal: true

module Mutations
  module Users
    class DeleteUser < ::Mutations::BaseMutation
      argument :id, ID, required: true

      type Types::UserType

      def resolve(id:)
        user = ::User.find(id)
        authorize! user, to: :manage?
        user.destroy!
        user
      end

    end
  end
end
