require "houston/roadmaps/milestone_ext"

module Houston
  module Roadmaps
    class Railtie < ::Rails::Railtie

      # The block you pass to this method will run for every request in
      # development mode, but only once in production.
      config.to_prepare do
        ::Milestone.send(:include, Houston::Roadmaps::MilestoneExt)
      end

    end
  end
end
