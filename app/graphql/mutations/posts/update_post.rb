module Mutations
  module Posts
    class UpdatePost < ::Mutations::BaseMutation
      argument :id, ID, required: true
      argument :attributes, Types::PostInput, required: true

      type Types::PostType

      def resolve(id:, attributes:)
        attr = attributes.to_h
        post = Post.find(id)
        authorize! post, to: :manage?
        post.update!(attr)
        post
      end

    end
  end
end
