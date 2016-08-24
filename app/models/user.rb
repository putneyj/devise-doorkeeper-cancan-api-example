# frozen_string_literal: true
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :rememberable, :trackable
  devise :database_authenticatable, :registerable, :recoverable, :validatable
end
