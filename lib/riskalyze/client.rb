module Riskalyze
  class Client
    include Riskalyze::Connection
    include Riskalyze::Authentication
    include Riskalyze::Client::Portfolios
    include Riskalyze::Client::Clients

    def initialize(options =  {})
      raise ArgumentError, 'oauth_token required' unless options[:oauth_token]

      @api_endpoint = options[:api_endpoint] || Riskalyze.config.api_endpoint
      @oauth_token = options[:oauth_token]
      @refresh_token = options[:refresh_token]
    end
  end
end