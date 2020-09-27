module Mutations
  module Songs
    class UpdateSong < ::Mutations::BaseMutation
      argument :id, ID, required: true
      argument :attributes, Types::SongInput, required: true

      type Types::PostType

      def resolve(id:, attributes:)
        attr = attributes.to_h
        song = ::Song.find(id)
        authorize! song, to: :manage?
        song.update!(attr)
        song
      end

    end
  end
end
