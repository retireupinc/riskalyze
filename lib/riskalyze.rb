require 'httparty'
require 'oauth2'
require 'virtus'

require 'riskalyze/version'
require 'riskalyze/errors'
require 'riskalyze/connection'
require 'riskalyze/authentication'
require 'riskalyze/models/analysis'
require 'riskalyze/models/allocation'
require 'riskalyze/models/account'
require 'riskalyze/models/portfolio'
require 'riskalyze/models/client'
require 'riskalyze/client/portfolios'
require 'riskalyze/client/clients'
require 'riskalyze/client'

module Riskalyze
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
