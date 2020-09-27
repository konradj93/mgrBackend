# frozen_string_literal: true

module Mutations
  module Posts
    class CreatePost < ::Mutations::BaseMutation
      argument :attributes, Types::PostInput, required: true

      type Types::PostType
      def resolve(attributes:)
        attr = attributes.to_h

        post = ::Post.new(attr.merge(user: context[:current_user], songs: attr[:songs].map do |song_attr|
          ::Song.find_or_initialize_by(id: song_attr[:id]) do |song|
            song.attributes = song_attr.merge(artists: song_attr[:artists].map do |artist_attr|
              ::Artist.find_or_initialize_by(id: artist_attr[:id]) do |artist|
                artist.attributes = artist_attr
              end
            end)
          end
        end))

        authorize! post, to: :manage?
        post.save!
        post

      end

    end
  end
end

