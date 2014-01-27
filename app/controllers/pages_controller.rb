class PagesController < ApplicationController
  before_filter :authorize, only: [:edit, :update]
end
