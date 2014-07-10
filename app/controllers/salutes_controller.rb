class SalutesController < ApplicationController
  def index
    @salutes = current_user.salutes
  end

  def create
    @salute = current_user.salutes.new(body: "Salut!")
    @salute.save
    redirect_to root_path
  end

end