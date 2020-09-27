# frozen_string_literal: true

module Queries
  class Artists < Queries::BaseQuery
    description 'Find artists'

    type [Types::ArtistType], null: false

    def resolve
      ::Artist.all
    end
  end
end
