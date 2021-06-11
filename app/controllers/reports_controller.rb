class ReportsController < ApplicationController
  def create
    @report = Report.new(report_params)
    redirect_to root_url
  end

  def new

  end

  private

  def report_params
    params.require(:report).permit(:body)
  end
end
