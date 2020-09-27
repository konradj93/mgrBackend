# frozen_string_literal: true

module Mutations
  module Songs
    class CreateSong < ::Mutations::BaseMutation
      argument :attributes, Types::SongInput, required: true

      type Types::SongType
      def resolve(attributes:)
        attr = attributes.to_h

        song = ::Song.new(attr.merge(artists: attr[:artists].map do |artist_attr|
          ::Artist.find_or_initialize_by(id: artist_attr[:id]) do |artist|
            artist.attributes = artist_attr
          end
        end))

        authorize! song, to: :manage?
        song.save!
        song

      end
    end
  end
end

