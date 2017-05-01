# frozen_string_literal: true

class GamesController < OpenReadController
  # before_action :set_game, only: [:show, :update, :destroy]
  before_action :set_game, only: [:show, :update, :destroy]
  # GET /games
  def index
    # @games = Game.all
    if current_user
      @games = current_user.games
    else
      @games = Game.all
    end
    render json: @games
  end

  # GET /games/1
  # def show
  #   render json: @game
  # end

  def show
    render json: @game
  end


  # POST /games
  # def create
  #   @game = Game.new(game_params)
  #
  #   if @game.save
  #     render json: @game, status: :created, location: @game
  #   else
  #     render json: @game.errors, status: :unprocessable_entity
  #   end
  # end

  def create
    @game = current_user.games.build(game_params)

    if @game.save
      render json: @game, status: :created
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /games/1
  # def destroy
  #   @game.destroy
  # end

  def destroy
    @game.destroy

    head :no_content
  end

  # private

  # Use callbacks to share common setup or constraints between actions.

  # def set_game
  #   @game = Game.find(params[:id])
  # end

  def set_game
    @game = current_user.games.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.

  # def game_params
  # params.require(:game).permit(:player_id, :game_status, :letters_played, :user_id, :phrase_id)
  # end

  def game_params
    params.require(:game).permit(:game_status, :letters_played, :user_id, :phrase_id)
    # params.require(:game).permit(:game_status, :letters_played)
  end

  private :set_game, :game_params
end
