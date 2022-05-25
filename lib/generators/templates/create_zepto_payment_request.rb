class CreateZeptoClientPaymentRequest < ActiveRecord::Migration
  def self.up
    unless ActiveRecord::Base.connection.table_exists? 'zepto_payment_requests'
      create_table :zepto_payment_requests do |t|
        t.string :payment_reference
        t.integer :repayment_id
        t.string :status
        t.timestamps
      end

    end
  end

  def self.down
    drop_table :zepto_payment_requests if ActiveRecord::Base.connection.table_exists? 'zepto_payment_requests'
  end
end
