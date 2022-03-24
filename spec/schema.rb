ActiveRecord::Schema.define do
  self.verbose = false

  create_table :zepto_payment_requests do |t|
    t.integer :transaction_id
    t.text :ref_id
    t.text :request
    t.text :response
    t.timestamps
  end

  create_table :zepto_webhook_callbacks do |t|
    t.text :parent_ref_id
    t.text :payload
    t.timestamps
  end

end
