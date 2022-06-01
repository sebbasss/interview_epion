class CheckIn < ApplicationRecord
  belongs_to :patient
  has_one :screener
end
