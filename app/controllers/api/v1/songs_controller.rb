# frozen_string_literal: true

module Api
  module V1
    class SongsController < ApplicationController
      include JSONAPI::Deserialization
      include JSONAPI::Fetching

      before_action except: %i[index show] do
        authenticate_user
      end

      def index
        songs = Song.order(:created_at)
        render jsonapi: songs
      end

      def show
        song = Song.find(params[:id])
        render jsonapi: song
      end

      def create
        song = Song.create!(song_params)
        render jsonapi: song, status: :created
      end

      def destroy
        song = Song.find(params[:id])
        song.destroy!
        head :no_content
      end

      def update
        song = Song.find(params[:id])
        song.update!(song_params)
        render jsonapi: song, status: :accepted
      end

      def jsonapi_include
        super & %w[artists]
      end

      private

      def song_params
        jsonapi_deserialize(
          params,
          only: %i[title youtube sound_cloud spotify amazon_music
                   deezer google_play apple_music others tags artists]
        )
      end
    end
  end
end
