# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      include JSONAPI::Deserialization
      include JSONAPI::Fetching

      before_action except: %i[create] do
        authenticate_user
      end

      def index
        users = User.order(:created_at)
        render jsonapi: users
      end

      def show
        user = User.find(params[:id])
        render jsonapi: user
      end

      def create
        user = User.create!(user_params)
        render jsonapi: user, status: :created
      end

      def destroy
        user = User.find(params[:id])
        user.destroy!
        head :no_content
      end

      def update
        user = User.find(params[:id])
        user.update!(user_params)
        render jsonapi: user, status: :accepted
      end

      # def jsonapi_include
      #   super & %w[posts posts.songs posts.songs.artists]
      # end

      private

      def user_params
        jsonapi_deserialize(
          params,
          only: %i[first_name last_name email role password password_confirmation posts comments]
        )
      end
    end
  end
end
