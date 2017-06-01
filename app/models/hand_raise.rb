class HandRaise < ApplicationRecord
  enum status: {
    pending: 0,
    in_progress: 1,
    resolved: 2,
    unresolved: 3
  }

  validates_presence_of :question, :student_email, :student_name

  after_initialize :set_defaults

  def set_defaults
    self.guide_title ||= 'General inquiry'
  end
end
