# frozen_string_literal: true

module Queries
  class Song < Queries::BaseQuery
    description 'Find song by id'

    argument :id, ID, required: true

    type Types::SongType, null: false

    def resolve(id:)
      ::Song.find(id)
    end
  end
end
