module Riskalyze
  module Models
    class Account
      include Virtus.model

      attribute :id, Integer
      attribute :porfolio_id, Integer
      attribute :name, String
      attribute :total, Integer
      attribute :type, String
      attribute :analysis, Analysis
      attribute :created, DateTime
      attribute :updated, DateTime
      attribute :allocations, Array[Allocation]
    end
  end
end