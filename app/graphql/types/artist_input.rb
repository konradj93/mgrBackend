module Types
  class ArtistInput < Types::BaseInputObject
    argument :id, ID, required: false
    argument :name, String, required: false
    argument :twitter, String, required: false
    argument :facebook, String, required: false
    argument :instagram, String, required: false
    argument :sound_cloud, String, required: false
    argument :youtube, String, required: false
    argument :nationality, String, required: false
  end
end
