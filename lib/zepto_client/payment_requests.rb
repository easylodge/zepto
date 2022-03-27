# https://docs.zepto.money/#Zepto-API-Payment-Requests
module PaymentRequests
  def get_payment_request(id)
    endpoint = "payment_requests/#{id}"
    response = get(endpoint)
  end

  def create_payment_request(body)
    endpoint = "payment_requests"
    response = post(endpoint, body)
  end

  def cancel_payment_request(id)
    endpoint = "payment_requests/#{id}"
    response = delete(endpoint)
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
