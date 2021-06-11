class ReportsController < ApplicationController

  def new
    @report = Report.new
  end

  def create
    @report = Report.create(report_params)
    redirect_to root_url
  end

  private

  def report_params
    params.require(:report).permit(:body)
  end
end
