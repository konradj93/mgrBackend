module Mutations
  module Users
    class UpdateUser < ::Mutations::BaseMutation
      argument :id, ID, required: true
      argument :attributes, Types::UserUpdateInput, required: true

      type Types::UserType

      def resolve(id:, attributes:)
        attr = attributes.to_h
        user = ::User.find(id)
        authorize! user, to: :manage?
        user.update!(attr)
        user
      end

    end
  end
end

