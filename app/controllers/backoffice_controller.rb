# frozen_string_literal: true

class BackofficeController < ApplicationController
  before_action :authenticate_user!
  layout 'backoffice'
  def index
  end
end
