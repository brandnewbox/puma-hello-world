class PutsJob < ApplicationJob
  def perform
    puts "Job Run"
  end
end
