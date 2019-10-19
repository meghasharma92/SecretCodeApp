class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :secret_code, class_name: "Code", dependent: :destroy 

  validates_presence_of :first_name, :last_name      

  accepts_nested_attributes_for :secret_code, allow_destroy: true, update_only: true

  enum role: ['member', 'admin']

end
