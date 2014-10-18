class TheTeamsController < ApplicationController
  respond_to :html, :xml, :json

  def show
    @the_team = TheTeam.first
    respond_with(@the_team)
  end
end
