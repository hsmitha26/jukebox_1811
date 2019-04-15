class AwardsController < ApplicationController

  def create
    @admin = current_user
    @award = Award.new(award_params)
    @award.save
    redirect_to awards_path
  end

  private

  def award_params
    params.require(:awards).permit(:name)
  end
end
