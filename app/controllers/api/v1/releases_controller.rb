class Api::V1::ReleasesController < ApplicationController
  before_action :set_release, only: [:show, :update, :destroy, :lineup]

  # GET /releases
  def index
    @releases = Release.all

    render json: @releases
  end

  # GET /releases/1
  def show
    render json: @release, :include => [
      :label,
      {:participations => {:include => :band } },
      {:discs => {:include => :songs } }
    ]
  end

  def lineup
    @lineups = @release.lineups
    render json: @lineups, :include => :artist
  end

  # POST /releases
  def create
    @release = Release.new(release_params)

    if @release.save
      render json: @release, status: :created
    else
      render json: @release.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /releases/1
  def update
    if @release.update(release_params)
      render json: @release
    else
      render json: @release.errors, status: :unprocessable_entity
    end
  end

  # DELETE /releases/1
  def destroy
    @release.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release
      @release = Release.includes(:participations).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def release_params
      params.require(:release).permit(:name, :description, :release_type, :genre, :format, :catalog_id, :additional_notes, :recording_information, :identifiers, :user_id, :label_id, :release_id)
    end
end
