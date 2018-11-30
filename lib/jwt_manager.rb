# frozen_string_literal: true

class JwtManager
  HS265 = 'HS256'.freeze
  require 'jwt'

  def initialize(secret_key_env_var_name = 'JWT_MANAGER_SHARED_SECRET')
    if ENV[secret_key_env_var_name].nil?
      raise ArgumentError, 'JWT Shared secret not configured.'
    end
    @hmac_secret = ENV[secret_key_env_var_name]
  end

  def encode(payload)
    JWT.encode(payload, @hmac_secret, HS265)
  end

  def decode(token)
    JWT.decode(token, @hmac_secret, true, algorithm: HS265)
  end
end
