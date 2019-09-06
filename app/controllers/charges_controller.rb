class ChargesController < ApplicationController
  def new

  end

  def create

   @amount = 500

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Payement enligne',
      currency: 'eur'
    })
     @cart = Cart.find(current_user.cart.id)
     @cart.join_cart_items.destroy_all
        redirect_to root_path
     rescue Stripe::CardError => e
     flash[:error] = e.message

end
end
