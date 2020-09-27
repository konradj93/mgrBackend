# frozen_string_literal: true

module Mutations
  module Users
    class CreateUser < ::Mutations::BaseMutation
      argument :attributes, Types::UserInput, required: true

      type Types::UserType

      def resolve(attributes:)
        attr = attributes.to_h
        ::User.create!(attr)
      end
    end
  end
end
