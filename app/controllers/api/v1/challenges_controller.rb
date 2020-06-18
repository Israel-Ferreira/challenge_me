# frozen_string_literal: true

class Api::V1::ChallengesController < ApplicationController
  before_action :set_challenge, only: %i[show update]

  def index
    @challenges = Challenge.all
  end

  def show; end

  def create
    @challenge =  Challenge.new(challenge_params)
    @challenge.author = current_user

    if @challenge.save
      head :created
    else
      # head :unprocessable_entity
      render json: @challenge.errors.full_messages.to_sentence
    end
  end

  def update
    if @challenge.update(challenge_params)
      head :ok
    else
      head :unprocessable_entity
    end
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :category_id)
  end
end
