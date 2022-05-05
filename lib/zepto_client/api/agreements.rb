# https://docs.zepto.money/#Zepto-API-Agreements
module Api::Agreements
  def get_agreement(id)
    endpoint = "agreements/#{id}"
    get(endpoint)
  end

  def list_agreements(query = nil)
    endpoint = "agreements/outgoing"
    get(endpoint)
  end

  def cancel_agreement(id)
    endpoint = "agreements/#{id}"
    delete(endpoint)
  end

  def create_kyc_agreement(body)
    endpoint = "agreements/kyc"
    post(endpoint, body)
  end

end
