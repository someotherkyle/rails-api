class Status < ApplicationRecord
  has_many :sap_requests
  belongs_to :role
end
