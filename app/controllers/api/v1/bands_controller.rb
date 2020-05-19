class Api::V1::BandsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_band, only: [
    :show, :update, :destroy, :members, :reviews, :similar, :links
  ]
  before_action :check_includes, only: :index

  # GET /bands
  def index
  end

  # GET /bands/1
  def show
    render json: @band, :include => [
      :country, :user, :band_status, :label,
      { :participations => { :include => :release} },
      { :roles => { :include => :artist} }
    ]
  end

  def members
    render json: @band.roles, :include => 
      { :artist => { :include => {:roles => { :include => :band } } } }
  end

  def reviews
    render json: @band.participations.map(&:release).flat_map(&:reviews), :include => [
      :user, :release
    ]
  end

  def similar
    counts = Hash.new(0)
    @band.similarities.map(&:right_band).each{|band| counts[band.name] += 1}
    @similarities = @band.similarities.map(&:right_band).map{ |band| {
      name: band.name,
      country: band.country.name,
      genre: band.genre,
      score: counts[band.name]
    }}
    render json: @similarities
  end

  def links
    render json: @band.links
  end

  # POST /bands
  def create
    @band = Band.new(band_params)

    if @band.save
      render json: @band, status: :created
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bands/1
  def update
    if @band.update(band_params)
      render json: @band
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bands/1
  def destroy
    @band.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band
      @band = Band.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def band_params
      params.require(:band).permit(:name, :genre, :themes, :photo, :location, :info, :user_id, :band_status_id, :label_id, :country_id)
    end

    def check_includes
      @bands = Band.all
      if params.key? :includes
        render json: @bands, :include => params[:includes].split(',')
      else
        render json: @bands
      end
    end
end
