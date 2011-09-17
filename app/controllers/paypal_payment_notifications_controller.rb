class PaypalPaymentNotificationsController < InheritedResources::Base
  actions :index, :show, :create

  protect_from_forgery :except => [:create]

  def create
    PaypalPaymentNotification.create!(
      :params => params,
      :status => params[:payment_status],
      :paypal_transaction_id => params[:txn_id],
      :invoice => params[:invoice],
      :raw_post => request.raw_post
    )
    render :nothing => true
  end

end
