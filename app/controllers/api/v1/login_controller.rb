# frozen_string_literal: true

module Api
  module V1
    class LoginController < ApplicationController
      include JSONAPI::Deserialization
      before_action only: %i[destroy] do
        authenticate_user
      end

      def destroy
        user = current_user
        if user
          cookies.delete(:jwt)

          head :no_content
        else
          render json: { errors: [{ message: 'seesion does not exist' }] }, status: :not_found
        end
      end

      # rubocop :disable Metrics/MethodLength
      def create
        if login_params
          login_hash = User.handle_login(login_params)
          if login_hash
            cookies.signed[:jwt] = { value: login_hash[:token], httponly: true }
            render json: { data: { id: login_hash[:user_id], type: 'user', attributes:
                { role: login_hash[:role] } } }, status: :accepted
          else
            render json: { errors: [{ message: 'incorrect email or password' }] }, status: :bad_request
          end
        else
          render json: { errors: [{ message: 'specify email address and password' }] }, status: :bad_request
        end
      end
      # rubocop :enable Metrics/MethodLength

      private

      def login_params
        jsonapi_deserialize(
          params,
          only: %i[email password]
        )
      end
    end
  end
end
