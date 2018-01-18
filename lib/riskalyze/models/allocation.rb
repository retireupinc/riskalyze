module Riskalyze
  module Models
    class Allocation
      include Virtus.model

      attribute :id, Integer
      attribute :sec_id, Integer
      attribute :analysis, Analysis
      attribute :price, Float
      attribute :amount, Float
      attribute :security, Hash
    end
  end
end