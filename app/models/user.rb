class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true,uniqueness:true
  validates :name,  presence: true, length: { maximum: 50 }
  validates :address, presence: true
  validates :bank_account, presence: true
  validates :bank_account, numericality: { only_integer: true }
  validates :bank_account, length: { is: 7 }
  validates :birthday, presence: true
  validates :birthday,numericality: { only_integer: true }
  validates :credit, presence: true,uniqueness:true
  validates :credit,numericality: { only_integer: true }
  validates :credit, length: { is: 16}
end
