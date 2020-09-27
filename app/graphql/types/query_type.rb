# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :user, resolver: Queries::User
    field :users, resolver: Queries::Users
    field :post, resolver: Queries::Post
    field :posts, resolver: Queries::Posts
    field :song, resolver: Queries::Song
    field :songs, resolver: Queries::Songs
    field :artist, resolver: Queries::Artist
    field :artists, resolver: Queries::Artists
  end
end
