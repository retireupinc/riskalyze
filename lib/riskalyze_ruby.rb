require 'httparty'
require 'oauth2'
require 'virtus'

require 'riskalyze_ruby/version'
require 'riskalyze_ruby/errors'
require 'riskalyze_ruby/connection'
require 'riskalyze_ruby/authentication'
require 'riskalyze_ruby/models/analysis'
require 'riskalyze_ruby/models/allocation'
require 'riskalyze_ruby/models/account'
require 'riskalyze_ruby/models/portfolio'
require 'riskalyze_ruby/models/client'
require 'riskalyze_ruby/client/portfolios'
require 'riskalyze_ruby/client/clients'
require 'riskalyze_ruby/client'

module RiskalyzeRuby
  class << self
    attr_accessor :config

    def config
      @configuration ||= Configuration.new
    end

    def configure
      yield config
    end
  end

  class Configuration
    attr_accessor :client_id, :client_secret, :api_endpoint, :token_path

    def initialize
      @api_endpoint = 'https://api2.riskalyze.com/ap/v1'
      @token_path = "/oauthpro/token"
    end
  end
end
