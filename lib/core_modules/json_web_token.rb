# frozen_string_literal: true

module CoreModules
  class JsonWebToken
    require 'jwt'
    JWT_SECRET = Rails.application.secrets.secret_key_base
    private_constant :JWT_SECRET

    def self.encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.tv_sec
      JWT.encode(payload, JWT_SECRET, 'HS256')
    end

    def self.decode(token)
      body = JWT.decode(token, JWT_SECRET, true, { algorithm: 'HS256' })
      body&.first&.with_indifferent_access || false
    rescue JWT::DecodeError, JWT::ExpiredSignature, JWT::VerificationError
      false
    end
  end
end
