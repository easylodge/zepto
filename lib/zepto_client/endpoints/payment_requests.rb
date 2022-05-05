# https://docs.zepto.money/#Zepto-API-Payment-Requests
module PaymentRequests
  def get_payment_request(id)
    endpoint = "payment_requests/#{id}"
    get(endpoint)
  end

  def create_payment_request(body)
    endpoint = "payment_requests"
    post(endpoint, body)
  end

  def cancel_payment_request(id)
    endpoint = "payment_requests/#{id}"
    delete(endpoint)
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
