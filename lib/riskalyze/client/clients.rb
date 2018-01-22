module Riskalyze
  class Client
    module Clients
      def search_clients(search_query, options = {})
        clients = get 'clients/search', {query: { q: search_query}}
        clients.map { |client_params| Riskalyze::Models::Client.new client_params }
      end

      def clients
        clients = get 'clients'
        clients.map{ |client_params| Riskalyze::Models::Client.new client_params }
      end

      def client(client_id)
        client = get "clients/#{client_id}"
        Riskalyze::Models::Client.new response
      end
    end
  end
end