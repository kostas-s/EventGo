class Event < ApplicationRecord
  belongs_to :host, foreign_key: 'user_id', class_name: 'User'
  has_many :invitations
  has_many :attendees, through: :invitations, source: :user
end
