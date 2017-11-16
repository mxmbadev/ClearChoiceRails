class Client < ActiveRecord::Base
  has_one :city
  belongs_to :city
  has_many :logs
end
