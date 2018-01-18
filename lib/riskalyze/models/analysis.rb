module Riskalyze
  module Models
    class Analysis
      include Virtus.model

      attribute :return, Float
      attribute :stdev, Float
      attribute :risk_number, Integer
      attribute :worst, Float
      attribute :best, Float
    end
  end
end