# frozen_string_literal: true
module CloudPayments
  module Namespaces
    class Orders < Base
      def create(attributes)
        response = request(:create, attributes)
        Order.new(response[:model])
      end

      def cancel(attributes)
        response = request(:cancel, attributes)
        CancelOrder.new(response)
      end
    end
  end
end
