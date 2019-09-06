class UserMailer < ApplicationMailer
	default from: 'www.mailjet.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://www.mailjet.com' 
    mail(to: user.email, subject: 'Bienvenue chez nous !') 
  end

    def order_email(user)
      @user = user
      orders = Order.where(user_id: @user)
      @items = []
        orders.each do |ord|
          join = JoinOrderItem.find_by(order_id: ord.id)
          @items.push(Item.find(join.item_id))
        end
      mail(to: user , subject: 'Commande')
    end

    def admin_report_email(user)
      @user = user
      mail(to: "" , subject: 'Une commande a été faite')
    end
end

