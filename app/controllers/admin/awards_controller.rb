class Admin::AwardsController < ApplicationController
  before_action :require_admin

  def index

  end

  def create
    @award = Award.new(award_params)
    @award.save
    redirect_to awards_path
  end

  private

  def award_params
    params.require(:awards).permit(:name)
  end
end
