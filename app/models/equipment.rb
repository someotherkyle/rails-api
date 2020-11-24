class Equipment < ApplicationRecord
  has_many :flocs
  has_many :sap_requests, through: :flocs
end
