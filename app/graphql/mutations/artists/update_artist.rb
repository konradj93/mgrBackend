module Mutations
  module Artists
    class UpdateArtist < ::Mutations::BaseMutation
      argument :id, ID, required: true
      argument :attributes, Types::ArtistInput, required: true

      type Types::ArtistType

      def resolve(id:, attributes:)
        attr = attributes.to_h
        artist = ::Artist.find(id)
        authorize! artist, to: :manage?
        artist.update!(attr)
        artist
      end

    end
  end
end
