class StaticPagesController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def home
  end

  def about
  end

  def resume
  end

  def contact
  end
end
