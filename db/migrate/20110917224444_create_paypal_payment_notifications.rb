class CreatePaypalPaymentNotifications < ActiveRecord::Migration
  def change
    create_table :paypal_payment_notifications do |t|
      t.text :params
      t.string :status
      t.string :paypal_transaction_id
      t.string :invoice
      t.text :raw_post

      t.timestamps
    end
  end
end
