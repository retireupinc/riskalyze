module RiskalyzeRuby
  module Models
    class Client
      include Virtus.model

      attribute :id, Integer
      attribute :advisor_user_id, String
      attribute :client_user_id, String
      # attribute :client_attributes, Array
      attribute :created, DateTime
      attribute :email, String
      attribute :fname, String
      attribute :lname, String
      attribute :integrations, Array
      attribute :latest_current_portfolio, Float
      attribute :latest_proposed_portfolio, Float
      attribute :messages, Array
      attribute :next_review_date, DateTime
      attribute :phone, String
      attribute :photo_path, String
      attribute :portfolios, Array[Portfolio]
      attribute :prev_review_date, DateTime
      attribute :questionnaires, Array
      attribute :retirements, Array
      attribute :risk_number, Integer
      attribute :status, String

    end
  end
end