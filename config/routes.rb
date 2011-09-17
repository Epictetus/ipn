Ipn::Application.routes.draw do
  resources :paypal_payment_notifications

  root :to => 'paypal_payment_notifications#index'
end
