class SalutesController < ApplicationController
  def index
    @salute = Salute.new
    @users = User.all
    @salutes = current_user.received_salutes.order("created_at DESC")
  end

  def create
    @salute = current_user.sent_salutes.create(target_user_params)
    salute_content = render @salute
    Pusher[target_user_params[:receiver_id].to_s].trigger('new-salute', {content: salute_content})
  end

  private

  def target_user_params
  params.require(:salute).permit(:receiver_id).
  merge(body: "Salut!")
  end

end
