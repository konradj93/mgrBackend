
module Types
  class SongInput < Types::BaseInputObject
    argument :id, ID, required: false
    argument :title, String, required: false
    argument :description, String, required: false
    argument :sound_cloud, String, required: false
    argument :spotify, String, required: false
    argument :amazon_music, String, required: false
    argument :deezer, String, required: false
    argument :google_play, String, required: false
    argument :apple_music, String, required: false
    argument :others, GraphQL::Types::JSON, required: false
    argument :others, String, required: false
    argument :artists, [Types::ArtistInput], required: false
  end
end
