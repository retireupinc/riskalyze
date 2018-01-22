module Riskalyze
  module Authentication
    def refresh_access_token!
      raise ArgumentError, 'Refresh token required.' unless @refresh_token
      client = OAuth2::Client.new(Riskalyze.config.client_id, Riskalyze.config.client_secret,
        site: Riskalyze.config.api_endpoint,
        token_url: Riskalyze.config.token_path
      )

      access_token = OAuth2::AccessToken.new(client, @oauth_token, {refresh_token: @refresh_token})

      token = access_token.refresh!

      @oauth_token = token.token
      @refresh_token = token.refresh_token

      {
        oauth_token: token.token,
        refresh_token: token.refresh_token
      }
    end
  end
end