class Office < ActiveRecord::Base

  belongs_to :client
  accepts_nested_attributes_for :client, :reject_if => :all_blank

  validates :name, presence: true
  validates :country, presence: true
  validates :town, presence: true
  validates :postindex, presence: true
  validates :address, presence: true

end
