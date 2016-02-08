require "active_support/concern"

module Houston
  module Roadmaps
    module MilestoneExt
      extend ActiveSupport::Concern

      included do
        versioned only: [:name, :start_date, :end_date, :band, :lanes, :destroyed_at], class_name: "MilestoneVersion", initial_version: true
      end

    end
  end
end
