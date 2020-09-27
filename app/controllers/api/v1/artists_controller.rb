# frozen_string_literal: true

module Api
  module V1
    class ArtistsController < ApplicationController
      include JSONAPI::Deserialization
      include JSONAPI::Fetching

      before_action except: %i[index show] do
        authenticate_user
      end

      def index
        artists = Artist.order(:created_at)
        render jsonapi: artists
      end

      def show
        artist = Artist.find(params[:id])
        render jsonapi: artist
      end

      def create
        artist = Artist.create!(artist_params)
        render jsonapi: artist, status: :created
      end

      def destroy
        artist = Artist.find(params[:id])
        artist.destroy!
        head :no_content
      end

      def update
        artist = Artist.find(params[:id])
        artist.update!(artist_params)
        render jsonapi: artist, status: :accepted
      end

      def jsonapi_include
        super & %w[songs]
      end

      private

      def artist_params
        jsonapi_deserialize(
          params,
          only: %i[name twitter facebook instagram sound_cloud youtube nationality songs]
        )
      end
    end
  end
end
