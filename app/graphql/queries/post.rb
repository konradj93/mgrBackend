# frozen_string_literal: true

module Queries
  class Post < Queries::BaseQuery
    description 'Find post by id'

    argument :id, ID, required: true

    type Types::PostType, null: false

    def resolve(id:)
      ::Post.find(id)
    end
  end
end
