# frozen_string_literal: true

module Mutations
  module Artists
    class DeleteArtist < ::Mutations::BaseMutation
      argument :id, ID, required: true

      type Types::ArtistType

      def resolve(id:)
        artist = ::Artist.find(id)
        authorize! artist, to: :manage?
        artist.destroy!
        artist
      end

    end
  end
end
