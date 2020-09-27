# frozen_string_literal: true

class SongSerializer
  include FastJsonapi::ObjectSerializer
  has_many :artists
  attributes :title, :youtube, :sound_cloud, :spotify, :amazon_music,
             :deezer, :google_play, :apple_music, :others, :tags
end
