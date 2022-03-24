# https://docs.zepto.money/#Zepto-API-Agreements
module Agreements
  def get_agreement(id)
    endpoint = "agreements/#{id}"
    res = get(endpoint)
  end

  def list_agreements(query = nil)
    endpoint = "agreements/outgoing"
    if query != nil

    end
    res = get(endpoint)
  end

  def cancel_agreement(id)
    endpoint = "agreements/#{id}"
    res = delete(endpoint)
  end

  def create_kyc_agreement(body)
    endpoint = "agreements/kyc"
    response = post(endpoint, body)
  end

end
