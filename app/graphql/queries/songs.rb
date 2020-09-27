# frozen_string_literal: true

module Queries
  class Songs < Queries::BaseQuery
    description 'Find songs'

    type [Types::SongType], null: false

    def resolve
      ::Song.all
    end
  end
end
