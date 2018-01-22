module RiskalyzeRuby
  class Client
    include RiskalyzeRuby::Connection
    include RiskalyzeRuby::Authentication
    include RiskalyzeRuby::Client::Portfolios
    include RiskalyzeRuby::Client::Clients

    def initialize(options =  {})
      raise ArgumentError, 'oauth_token required' unless options[:oauth_token]

      @api_endpoint = options[:api_endpoint] || RiskalyzeRuby.config.api_endpoint
      @oauth_token = options[:oauth_token]
      @refresh_token = options[:refresh_token]
    end
  end
end