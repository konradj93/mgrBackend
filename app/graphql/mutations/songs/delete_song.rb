# frozen_string_literal: true

module Mutations
  module Songs
    class DeleteSong < ::Mutations::BaseMutation
      argument :id, ID, required: true

      type Types::SongType

      def resolve(id:)
        song = ::Song.find(id)
        authorize! song, to: :manage?
        song.destroy!
        song
      end

    end
  end
end
