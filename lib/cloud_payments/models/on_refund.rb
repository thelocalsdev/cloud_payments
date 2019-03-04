# frozen_string_literal: true
module CloudPayments
  class OnRefund < Model
    property :id, from: :transaction_id, required: true
    property :amount, transform_with: DecimalTransform, required: true
    property :invoice_id
    property :account_id
    property :email
    property :date_time, transform_with: DateTimeTransform
    property :payment_transaction_id
    property :operation_type
    property :data
  end
end
