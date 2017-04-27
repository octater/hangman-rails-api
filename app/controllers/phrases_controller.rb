# frozen_string_literal: true

class PhrasesController < ApplicationController
  before_action :set_phrase, only: [:show, :update, :destroy]

  # GET /phrases
  def index
    @phrases = Phrase.all

    render json: @phrases
  end

  # GET /phrases/1
  def show
    render json: @phrase
  end

  # POST /phrases
  def create
    @phrase = Phrase.new(phrase_params)

    if @phrase.save
      render json: @phrase, status: :created, location: @phrase
    else
      render json: @phrase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phrases/1
  def update
    if @phrase.update(phrase_params)
      render json: @phrase
    else
      render json: @phrase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phrases/1
  def destroy
    @phrase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phrase
      @phrase = Phrase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def phrase_params
      params.require(:phrase).permit(:phrase_content, :phrase_hint)
    end
end
