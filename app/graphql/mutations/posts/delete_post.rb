# frozen_string_literal: true

module Mutations
  module Posts
    class DeletePost < ::Mutations::BaseMutation
      argument :id, ID, required: true

      type Types::PostType

      def resolve(id:)
        post = ::Post.find(id)
        authorize! post, to: :manage?
        post.destroy!
        post
      end

    end
  end
end
