# frozen_string_literal: true

module Mutations
  module Artists
    class CreateArtist < ::Mutations::BaseMutation
      argument :attributes, Types::ArtistInput, required: true

      type Types::ArtistType
      def resolve(attributes:)
        attr = attributes.to_h

        artist = ::Artist.new(attr)
        authorize! artist, to: :manage?
        artist.save!
        artist
      end

    end
  end
end


