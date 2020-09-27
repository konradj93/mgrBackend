# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :description, String, null: true
    field :layout, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: false
    field :songs, [SongType], null: true
  end
end
