# https://docs.zepto.money/#Zepto-API-Contacts
module Contacts
  def create_contact(id, body)
    endpoint = "contacts/#{id}"
    response = post(endpoint, body)
  end

  def list_contacts
    endpoint = "contacts"
    response = get(endpoint)
  end

  def delete_contact(id)
    endpoint = "contacts/#{id}"
    response = get(endpoint)
  end

  def update_contact(id, body)
    endpoint = "contacts/#{id}"
    response = patch(endpoint, body)
  end
end
