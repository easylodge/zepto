require "httparty"
require "active_record"

module ZeptoClient
end

require "zepto_client/api"
require "zepto_client/payment_request"
require 'zepto_client/railtie' if defined?(Rails)
