require 'httparty'

require 'riskalyze/version'
require 'riskalyze/connection'
require 'riskalyze/errors'
require 'riskalyze/models/client'
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
    attr_accessor :api_endpoint, :oauth_token

    def initialize
      @api_endpoint = 'https://api2.riskalyze.com/ap/v1'
    end
  end
end
