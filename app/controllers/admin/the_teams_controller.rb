class Admin::TheTeamsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!
  before_action :set_advice, only: [:edit, :update, :destroy]
  after_action :verify_authorized

  def index
    @the_teams = TheTeam.all
    authorize TheTeam
    respond_with(@the_teams)
  end

  def new
    authorize TheTeam
    @the_team = TheTeam.new
    respond_with(@the_team)
  end

  def edit
  end

  def create
    authorize TheTeam
    @the_team = TheTeam.new(the_team_params)
    @the_team.save
    respond_with(@the_team)
  end

  def update
    @the_team.update(the_team_params)
    respond_with(@the_team)
  end

  def destroy
    @the_team.destroy
    respond_with(@the_team)
  end

  private
    def set_the_team
      @the_team = TheTeam.find(params[:id])
      authorize @the_team
    end

    def the_team_params
      params.require(:the_team).permit(:trustees_text, :staff_text, :volunteers_text)
    end
end
