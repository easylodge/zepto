# https://docs.zepto.money/#Zepto-API-Payments
module Payments
  def get_payment
    endpoint = "payments/#{id}"
    response = get(endpoint)
  end

  def list_payments
    endpoint = "payments"
    response = get(endpoint)
  end

  def create_payment_request(body)
    endpoint = "payment_requests"
    response = post(endpoint, body)
  end

  def list_collections
    endpoint = "payment_requests/collections"
    response = get(endpoint)
  end

  def list_receivables
    endpoint = "payment_requests/receivables"
    response = get(endpoint)
  end

end
