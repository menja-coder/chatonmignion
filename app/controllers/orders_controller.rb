class OrdersController < ApplicationController
  
  def show
 end

  def create
     @u=current_user.id
    @i=session[:item_id]
    @order = Order.create(user_id: @u)
    @commandes = JoinOrderItem.create(order_id:current_user.cart.id, item_id: @i)
      if @commandes.save
       redirect_to new_charge_path
     else
       puts "Try again"
     end
end
end

