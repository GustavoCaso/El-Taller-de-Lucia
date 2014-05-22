class StaticController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end
end
