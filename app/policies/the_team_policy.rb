class TheTeamPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @the_team = model
  end

  def index?
    @current_user.admin?
  end

  def new?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    return false if @current_user == @the_team
    @current_user.admin?
  end

end
