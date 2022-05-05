# https://docs.zepto.money/#Zepto-API-Contacts--Receivable-
module Endpoints
  module ContactsReceivable
    def create_receivable_contact(body)
      endpoint = "contacts/receivable"
      post(endpoint, body)
    end

    def disable_receivable_contact(id)
      endpoint = "contacts/#{id}/receivable/disable"
      post(endpoint)
    end

    def reactivate_receivable_contact(id)
      endpoint = "contacts/#{id}/receivable/activate"
      post(endpoint)
    end
  end
end
