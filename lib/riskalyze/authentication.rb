module Riskalyze
  module Authentication
    def refresh_access_token!
      client = OAuth2::Client.new(Riskalyze.config.client_id, Riskalyze.config.client_secret,
        site: Riskalyze.config.api_endpoint,
        token_url: Riskalyze.config.token_path
      )

      access_token = OAuth2::AccessToken.new(client, @oauth_token, {refresh_token: @refresh_token})

      access_token.refresh!
    end
  end
end