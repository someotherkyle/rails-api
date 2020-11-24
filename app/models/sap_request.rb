class SAP_Request < ApplicationRecord
  belongs_to :user
  belongs_to :action
  belongs_to :status
  has_many :floc
  has_many :equipments, through: :flocs
end
