# frozen_string_literal: true

module Queries
  class Posts < Queries::BaseQuery
    description 'Find posts'

    type [Types::PostType], null: false

    def resolve
      ::Post.all
    end
  end
end
