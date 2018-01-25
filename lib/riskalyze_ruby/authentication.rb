module RiskalyzeRuby
  module Authentication
    def refresh_access_token!
      raise ArgumentError, 'Refresh token required.' unless @refresh_token

      params = {
        headers: {
          'Accept' => 'application/json'
        },
        body: {
          grant_type: 'refresh_token',
          client_id: RiskalyzeRuby.config.client_id,
          client_secret: RiskalyzeRuby.config.client_secret,
          refresh_token: @refresh_token
        }
      }

      response = handle_response(HTTParty.post("#{@api_endpoint}/#{RiskalyzeRuby.config.token_path}", params))

      {
        oauth_token: response[:access_token],
        refresh_token: response[:refresh_token]
      }
    end
  end
end