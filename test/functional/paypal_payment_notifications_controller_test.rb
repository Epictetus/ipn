require 'test_helper'

class PaypalPaymentNotificationsControllerTest < ActionController::TestCase
  setup do
    @paypal_payment_notification = paypal_payment_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paypal_payment_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paypal_payment_notification" do
    assert_difference('PaypalPaymentNotification.count') do
      post :create, paypal_payment_notification: @paypal_payment_notification.attributes
    end

    assert_redirected_to paypal_payment_notification_path(assigns(:paypal_payment_notification))
  end

  test "should show paypal_payment_notification" do
    get :show, id: @paypal_payment_notification.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paypal_payment_notification.to_param
    assert_response :success
  end

  test "should update paypal_payment_notification" do
    put :update, id: @paypal_payment_notification.to_param, paypal_payment_notification: @paypal_payment_notification.attributes
    assert_redirected_to paypal_payment_notification_path(assigns(:paypal_payment_notification))
  end

  test "should destroy paypal_payment_notification" do
    assert_difference('PaypalPaymentNotification.count', -1) do
      delete :destroy, id: @paypal_payment_notification.to_param
    end

    assert_redirected_to paypal_payment_notifications_path
  end
end
