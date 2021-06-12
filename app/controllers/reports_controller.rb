class ReportsController < ApplicationController

  def new
    @report = Report.new
    @user = User.find(params[:user_id])
  end

  def create
    @report = Report.create(report_params)
    redirect_to root_url
  end

  private

  def report_params
    params.require(:report).permit(:body, :user_id, :reporter_id)
  end
end
