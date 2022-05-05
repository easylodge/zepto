require "active_record"

class ZeptoClient::PaymentRequest < ActiveRecord::Base
  self.table_name = "zepto_payment_requests"

  validates :repayment_id, presence: true
  validates :transaction_id, presence: true

  def schema
    {
      "description": "Visible to both initiator and authoriser",
      "matures_at": "2016-12-19T02:10:56.000Z",
      "amount": 99000,
      "authoriser_contact_id": "de86472c-c027-4735-a6a7-234366a27fc7",
      "your_bank_account_id": "9c70871d-8e36-4c3e-8a9c-c0ee20e7c679",
      "metadata": {
        "custom_key": "Custom string",
      }
    }
  end

  def to_s
    "Zepto payment request"
  end
end
