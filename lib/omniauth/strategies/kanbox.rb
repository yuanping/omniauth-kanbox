require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Kanbox < OmniAuth::Strategies::OAuth
      option :name, 'kanbox'

      option :client_options, {
        :authorize_path => '/0/auth',
        :site => 'https://auth.kanbox.com',
        :token_url => "/0/token",
      }

      uid { raw_info['email'] }

      info do
        {
          :name => raw_info['email']
          :email => raw_info['email']
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end
      
      def raw_info
        @raw_info ||= access_token.get('0/info').parsed
      end


    end
  end
end