class Api::V1::AlbumsController < ApplicationController
  before_action :set_album, only: [
    :show, :update, :destroy, :lineup, :versions, :reviews
  ]

  # GET /albums
  def index
    @albums = Album.all

    render json: @albums
  end

  # GET /albums/1
  def show
    render json: @album, :include => [
      :label,
      {:participations => {:include => :band } },
      {:discs => {:include => :songs } }
    ]
  end

  def lineup
    @lineups = @album.lineups
    render json: @lineups, :include => :artist
  end

  def versions
    render json: @album.albums, :include => :label
  end

  def reviews
    render json: @album.reviews, :include => :user
  end

  # POST /albums
  def create
    @album = Album.new(album_params)

    if @album.save
      render json: @album, status: :created
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /albums/1
  def update
    if @album.update(album_params)
      render json: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # DELETE /albums/1
  def destroy
    @album.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.includes(:participations).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def album_params
      params.require(:album).permit(:name, :description, :type, :genre, :format, :catalog_id, :additional_notes, :recording_information, :identifiers, :user_id, :label_id, :album_id)
    end
end
