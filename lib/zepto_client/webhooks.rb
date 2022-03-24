# https://docs.zepto.money/#Zepto-API-Webhooks
module Webhooks
  def list_webhooks
    endpoint = "webhooks"
    response = get(endpoint)
  end

  def list_webhook_deliveries(webhook_id)
    endpoint = "webhooks/#{webhook_id}/deliveries"
    response = get(endpoint)
  end

  def get_webhook_delivery(id)
    endpoint = "webhook_deliveries/#{id}"
    response = get(endpoint)
  end

  def resend_webhook_delivery(id)
    endpoint = "webhook_deliveries/#{id}/redeliver"
    response = post(endpoint, nil)
  end
end
