# frozen_string_literal: true

module Api
  module V1
    class PostsController < ApplicationController
      include JSONAPI::Deserialization
      include JSONAPI::Fetching

      before_action except: %i[index show] do
        authenticate_user
      end

      def index
        posts = Post.order(:created_at)
        render jsonapi: posts
      end

      def show
        post = Post.find(params[:id])
        render jsonapi: post
      end

      def create
        post = Post.create!(post_params.merge(user: current_user))
        render jsonapi: post, status: :created
      end

      def destroy
        post = Post.find(params[:id])
        post.destroy!
        head :no_content
      end

      def update
        post = Post.find(params[:id])
        post.update!(post_params)
        render jsonapi: post, status: :accepted
      end

      def jsonapi_include
        super & %w[songs songs.artists]
      end

      private

      def post_params
        jsonapi_deserialize(
          params,
          only: %i[title description layout songs]
        )
      end
    end
  end
end
