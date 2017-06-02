class ApiClient < ApplicationRecord
  validates_presence_of :source_app, :api_key
  validates_uniqueness_of :source_app, :api_key

  after_initialize :set_defaults

  private

  def set_defaults
    self.api_key ||= ApiKeyGenerator.build
  end
end
