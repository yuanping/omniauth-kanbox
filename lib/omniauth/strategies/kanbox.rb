require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Kanbox < OmniAuth::Strategies::OAuth2
      option :name, 'kanbox'

      option :client_options, {
        :authorize_url => '/0/auth',
        :site => 'https://auth.kanbox.com',
        :token_url => "/0/token",
      }

      uid { raw_info['email'] }

      info do
        {
          :name => raw_info['email'],
          :email => raw_info['email'],
          :phone => raw_info['phone'],
          :description => "spaceUsed:#{raw_info['spaceUsed']}/#{raw_info['spaceQuota']}"
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end
      
      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get("https://api.kanbox.com/0/info").body)
      end

    end
  end
end
