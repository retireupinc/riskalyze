module Riskalyze
  module Client
    module Portfolio

      def portfolios
        portfolios = get 'portfolios'
        portfolios.map{ |portfolio_params| Riskalyze::Models::Portfolio.new portfolio_params }
      end

      def portfolio(portfolio_id)
        portfolio = get "portfolios/#{portfolio_id}"
        Riskalyze::Models::Portfolio.new response
      end
    end
  end
end