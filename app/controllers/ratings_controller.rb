class RatingsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
  end
end
