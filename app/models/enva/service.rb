module Enva
  class Service < ApplicationRecord
    self.table_name = "enva_services"

    validates :prompt, presence: true

    scope :published, -> { where(published: true) }
  end
end
