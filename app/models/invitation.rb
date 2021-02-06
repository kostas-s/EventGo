class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def get_users_invited_to_event(id)
    Invitation.where(event_id: id)
  end

  def get_events_attended_by_user(id)
    Invitation.where(user_id: id)
  end
end
