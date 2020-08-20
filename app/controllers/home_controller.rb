class HomeController < ApplicationController
  def index;end

  def enqueue
    PutsJob.perform_later
    redirect_to root_path
  end
 end