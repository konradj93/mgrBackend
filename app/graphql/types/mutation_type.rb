# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_post, mutation: Mutations::Posts::CreatePost
    field :delete_post, mutation: Mutations::Posts::DeletePost
    field :update_post, mutation: Mutations::Posts::UpdatePost
    field :create_artist, mutation: Mutations::Artists::CreateArtist
    field :delete_artist, mutation: Mutations::Artists::DeleteArtist
    field :update_artist, mutation: Mutations::Artists::UpdateArtist
    field :create_song, mutation: Mutations::Songs::CreateSong
    field :delete_song, mutation: Mutations::Songs::DeleteSong
    field :update_song, mutation: Mutations::Songs::UpdateSong
    field :create_user, mutation: Mutations::Users::CreateUser
    field :delete_user, mutation: Mutations::Users::DeleteUser
    field :update_user, mutation: Mutations::Users::UpdateUser
    field :sign_in_user, mutation: Mutations::Users::SignInUser
    field :log_out_user, mutation: Mutations::Users::LogOutUser
  end
end
