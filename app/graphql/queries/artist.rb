# frozen_string_literal: true

module Queries
  class Artist < Queries::BaseQuery
    description 'Find artist by id'

    argument :id, ID, required: true

    type Types::ArtistType, null: false

    def resolve(id:)
      ::Artist.find(id)
    end
  end
end
