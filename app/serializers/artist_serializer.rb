# frozen_string_literal: true

class ArtistSerializer
  include FastJsonapi::ObjectSerializer
  has_many :songs
  attributes :name, :twitter, :facebook, :instagram, :sound_cloud, :youtube, :nationality
end
