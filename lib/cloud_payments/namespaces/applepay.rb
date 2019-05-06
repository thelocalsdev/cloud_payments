module CloudPayments
  module Namespaces
    class Applepay < Base
      def create(attributes)
        response = request(:startsession, attributes)
        instantiate(response[:model])
      end

      private

      def instantiate(model)
        AppleSession.new(model)
      end
    end
  end
end
