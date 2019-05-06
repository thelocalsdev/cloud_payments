# frozen_string_literal: true
module CloudPayments
  class OnCancel < Model
    property :id, from: :transaction_id, required: true
    property :amount, transform_with: DecimalTransform, required: true
    property :date_time, transform_with: DateTimeTransform
    property :invoice_id
    property :account_id
    property :email
    property :data
  end
end
