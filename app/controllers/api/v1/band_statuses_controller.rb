class Api::V1::BandStatusesController < ApplicationController
  def index
    @band_statuses = BandStatus.all

    render json: @band_statuses
  end
end
