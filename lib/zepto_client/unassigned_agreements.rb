# https://docs.zepto.money/#Zepto-API-Unassigned-Agreements
module UnassignedAgreements
  def get_unassigned_agreement(id)
    endpoint = "unassigned_agreements/#{id}"
    get(endpoint)
  end

  def list_unassigned_agreements
    endpoint = "unassigned_agreements"
    get(endpoint)
  end

  def create_unassigned_agreement(body)
    endpoint = "unassigned_agreements"
    post(endpoint, body)
  end

  def delete_unassigned_agreement(id)
    endpoint = "unassigned_agreements/#{id}"
    delete(endpoint)
  end

end
