class Repository < ApplicationRecord
  belongs_to :language

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :language_id, presence: true
  validates :external_id, presence: true
  validates :owner_name, presence: true
end
