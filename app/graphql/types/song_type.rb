# frozen_string_literal: true

module Types
  class SongType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :youtube, String, null: true
    field :sound_cloud, String, null: true
    field :spotify, String, null: true
    field :tidal, String, null: true
    field :amazon_music, String, null: true
    field :deezer, String, null: true
    field :google_play, String, null: true
    field :apple_music, String, null: true
    field :others, GraphQL::Types::JSON, null: true
    field :tags, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :artists, [ArtistType], null: false
  end
end
