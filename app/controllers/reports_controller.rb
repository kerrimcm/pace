class ReportsController < ApplicationController
  def create
    @reported_user = User.find(params[:user_id])
    @report = @reported_user.reports.create(params[:report].permit(:body))
  end
end
