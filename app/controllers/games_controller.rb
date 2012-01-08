class GamesController < ResourcesController
  def index
    authorize! :read, Game
  end
end
