module RiskalyzeRuby
  class Client
    module Portfolios
      def portfolios
        portfolios = get 'portfolios'
        puts portfolios
        portfolios["data"].map{ |portfolio_params| RiskalyzeRuby::Models::Portfolio.new portfolio_params }
      end

      def portfolio(portfolio_id)
        portfolio = get "portfolios/#{portfolio_id}"
        RiskalyzeRuby::Models::Portfolio.new portfolio
      end
    end
  end
end