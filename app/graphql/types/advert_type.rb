# frozen_string_literal: true

module Types
  class AdvertType < Types::BaseObject
    field :id, ID, null: false
    field :advert_url, String, null: true
    field :advert_image, String, null: true
    field :advert_description, String, null: true
    field :layout, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
