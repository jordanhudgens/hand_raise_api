class HandRaise < ApplicationRecord
  validates_presence_of :question, :student_email, :student_name

  after_initialize :set_defaults

  def set_defaults
    self.guide_title ||= 'General inquiry'
  end
end
