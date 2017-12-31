class Device < ApplicationRecord
  has_many :readings
  belongs_to :client
end
