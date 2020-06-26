class DaysController < ApplicationController



  before_action :set_day, only: [:show]

  def index
    @days = policy_scope(Day)
  end




  def show
    if current_user
      @all_reservations = current_user.reservations.where(day_id: @day.id)
      @comment = Comment.new
      @kids_with_no_reservation = current_user.kids.reject { |kid| Reservation.exists?(kid_id: kid.id, day_id: @day.id) }
    end
    @kid = Kid.new
    @reservation = Reservation.new
  end








  private



  def day_params
    params.require(:day).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end

  def set_game
    @day = Day.find(params[:id])
    authorize @day
  end
end


end
