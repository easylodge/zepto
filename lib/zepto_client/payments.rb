# https://docs.zepto.money/#Zepto-API-Payments
module Payments
  def get_payment
    endpoint = "payments/#{id}"
    get(endpoint)
  end

  def list_payments
    endpoint = "payments"
    get(endpoint)
  end

  def create_payment_request(body)
    endpoint = "payment_requests"
    post(endpoint, body)
  end

  def list_collections
    endpoint = "payment_requests/collections"
    get(endpoint)
  end

  def list_receivables
    endpoint = "payment_requests/receivables"
    get(endpoint)
  end

end
