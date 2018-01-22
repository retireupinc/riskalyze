module RiskalyzeRuby
  module Authentication
    def refresh_access_token!
      raise ArgumentError, 'Refresh token required.' unless @refresh_token
      client = OAuth2::Client.new(RiskalyzeRuby.config.client_id, RiskalyzeRuby.config.client_secret,
        site: RiskalyzeRuby.config.api_endpoint,
        token_url: RiskalyzeRuby.config.token_path
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