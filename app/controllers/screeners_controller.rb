class ScreenersController < ApplicationController

  def new
    @screener = Screener.new
    @check_in = CheckIn.find(params[:check_in_id])
  end

  def create

    @screener = Screener.new(screener_params)
    @check_in = CheckIn.find_by(id: params[:check_in_id])
    @screener.check_in_id = @check_in.id
    @screener.save
    score1 = @screener.question1.to_i
    score2 = @screener.question2.to_i
    if score1 >= 2 || score2 >= 2
      flash.notice = "additional screaning should be completed"
      redirect_to root_path
    else
      flash.now[:notice] = "No additional screening required"
      redirect_to root_path
    end
  end

  private

  def screener_params
    params.require(:screener).permit(:question1, :question2)
  end
end
