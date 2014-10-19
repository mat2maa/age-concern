class YourSupportPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @your_support = model
  end

  def index?
    @current_user.admin?
  end

  def new?
    @current_user.admin?
  end

  def create?
    @current_user.admin?
  end

  def edit?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    return false if @current_user == @your_support
    @current_user.admin?
  end

end
