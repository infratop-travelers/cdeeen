class Customer < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :read_first_name, presence: true
  validates :last_name, presence: true
  validates :read_last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true
  validates :post_code, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :street, presence: true

  has_many :addresses
  has_many :favorites
  has_many :orders
  has_many :cart_items
  has_one :resigned_customer


end
