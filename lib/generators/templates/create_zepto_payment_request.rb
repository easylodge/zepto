class CreateZeptoClientPaymentRequest < ActiveRecord::Migration
  def self.up
    unless ActiveRecord::Base.connection.table_exists? 'zepto_client_payment_requests'
      create_table :zepto_client_payment_requests do |t|
        t.text :ref
        t.text :credit_ref
        t.integer :transaction_id
        t.integer :repayment_id
        t.text :status
        t.timestamps
      end

    end
  end

  def self.down
    drop_table :zepto_client_payment_requests if ActiveRecord::Base.connection.table_exists? 'zepto_client_payment_requests'
  end
end
