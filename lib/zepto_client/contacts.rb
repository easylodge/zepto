# https://docs.zepto.money/#Zepto-API-Contacts
module Contacts
  def create_contact(id, body)
    endpoint = "contacts/#{id}"
    post(endpoint, body)
  end

  def list_contacts
    endpoint = "contacts"
    get(endpoint)
  end

  def delete_contact(id)
    endpoint = "contacts/#{id}"
    get(endpoint)
  end

  def update_contact(id, body)
    endpoint = "contacts/#{id}"
    patch(endpoint, body)
  end
end
