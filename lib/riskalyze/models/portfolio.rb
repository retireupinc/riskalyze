module Riskalyze
  module Models
    class Portfolio
      include Virtus.model

      attribute :id, Integer
      attribute :user_id, Integer
      attribute :client_id, Integer
      attribute :name, String
      attribute :total, Integer
      attribute :analysis, Analysis
      attribute :status, String
      attribute :type, String
      attribute :created, DateTime
      attribute :updated, DateTime
      attribute :data_model, Integer
      attribute :accounts, Array[Account]


    end
  end
end