class GithubsController < ApplicationController
  before_action :set_github, only: [:show, :update, :destroy]

  # GET /githubs
  def index
    @githubs = Github.all

    render json: @githubs
  end

  # GET /githubs/1
  def show
    render json: @github
  end

  # POST /githubs
  def create
    @github = Github.new(github_params)

    if @github.save
      render json: @github, status: :created, location: @github
    else
      render json: @github.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /githubs/1
  def update
    if @github.update(github_params)
      render json: @github
    else
      render json: @github.errors, status: :unprocessable_entity
    end
  end

  # DELETE /githubs/1
  def destroy
    @github.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_github
      @github = Github.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def github_params
      params.require(:github).permit(:date, :commits, :link, :notes, :user_id)
    end
end
