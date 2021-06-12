# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update ]

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      redirect_to new_user_registration_path
    end
  end

  def show
    @user = User.find(params[:id])
    @reports = Report.all
    @reported = reported?(@reports, @user, current_user)
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def reported?(reports, reported_user, reporter_user)
    report_match = false
    reports.each do |report|
      report_match = true if report.user_id == reported_user.id && report.reporter_id == reporter_user.id
    end
    report_match
  end
end
