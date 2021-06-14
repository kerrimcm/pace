# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_pic
  validates :first_name, :postcode, :dob, :gender, :ability, :goals, :profile_pic, presence: true
  
  def self.search(params)
    where("LOWER(first_name) LIKE :term OR LOWER(postcode) LIKE :term OR LOWER(gender) LIKE :term 
      OR LOWER(ability) LIKE :term OR LOWER(goals) LIKE :term", term: "%#{params}%")
  end


  has_many :endorsements

  has_many :reports

end
