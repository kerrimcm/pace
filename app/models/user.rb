# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_pic
  validates :first_name, :postcode, :dob, :gender, :ability, :goals, :profile_pic, presence: true
  has_many :reports
end
