# frozen_string_literal: true

module Types
  class ArtistType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :twitter, String, null: true
    field :facebook, String, null: true
    field :instagram, String, null: true
    field :sound_cloud, String, null: true
    field :youtube, String, null: true
    field :nationality, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :songs, [SongType], null: true
  end
end
