# https://docs.zepto.money/#Zepto-API-Contacts--Receivable-
module ContactsReceivable
  def create_receivable_contact(body)
    endpoint = "contacts/receivable"
    response = post(endpoint, body)
  end

  def disable_receivable_contact(id)
    endpoint = "contacts/#{id}/receivable/disable"
    response = post(endpoint)
  end

  def reactivate_receivable_contact(id)
    endpoint = "contacts/#{id}/receivable/activate"
    response = post(endpoint)
  end

end
