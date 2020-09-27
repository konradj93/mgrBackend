module Types
  class PostInput < Types::BaseInputObject
    argument :title, String, required: false
    argument :description, String, required: false
    argument :layout, Integer, required: false
    argument :songs, [Types::SongInput], required: false
  end
end
