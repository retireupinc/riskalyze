module RiskalyzeRuby
  class APIError < StandardError
  end

  class RequestError < APIError
  end

  class AuthorizationError < APIError
  end
end