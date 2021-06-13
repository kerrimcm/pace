class EndorsementsController < ApplicationController

  def index
    @endorsements = Endorsement.all
  end

  def create
    @endorsement = Endorsement.create(endorsement_params)
    redirect_to "/users/#{params[:user_id]}"
  end

  private

  def endorsement_params
    params.require(:report).permit(:body, :user_id, :endorser_id)
  end
end
