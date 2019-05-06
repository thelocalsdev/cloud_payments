module CloudPayments
  class AppleSession < Model
    property :epoch_timestamp
    property :expires_at
    property :merchant_session_identifier
    property :nonce
    property :merchant_identifier
    property :domain_name
    property :display_name
    property :signature
  end
end
