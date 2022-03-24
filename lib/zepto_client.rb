require 'zepto_client/payment_request'

require "zepto_client/agreements"
require "zepto_client/contacts_receivable"
require "zepto_client/contacts"
require "zepto_client/payment_requests"
require "zepto_client/payments"
require "zepto_client/unassigned_agreements"
require "zepto_client/webhooks"

require "httparty"

require "pry"

module ZeptoClient
  class Api
    include Agreements
    # include BankAccounts
    # include BankConnections
    include ContactsReceivable
    include Contacts
    # include OpenAgreements
    include PaymentRequests
    include Payments
    # include Payouts
    # include Refunds
    # include Transactions
    # include Transfers
    include UnassignedAgreements
    # include Users
    include Webhooks
    attr_accessor :api_key, :base_url

    def initialize(api_key:)
      @api_key = api_key
      @base_url = "https://api.sandbox.split.cash/"
    end

    private

    def http
      @http ||= HTTParty
    end

    def headers
      @headers ||= { "Authorization": "Bearer #{@api_key}"}
    end

    def get(endpoint)
      response = HTTParty.get(@base_url + endpoint, headers: headers)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to Zepto" }
    end

    def patch(endpoint, body)
      response = HTTParty.patch(@base_url + endpoint, headers: headers, body: body)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to Zepto" }
    end

    def post(endpoint, body)
      response = HTTParty.post(@base_url + endpoint, headers: headers, body: body)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to Zepto" }
    end

    def delete(endpoint, body)
      response = HTTParty.post(@base_url + endpoint, headers: headers)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to Zepto" }
    end

  end

end
