# frozen_string_literal: true

class HeroesController < ApplicationController
  def index
    @heroes = Hero.includes(:planet).order(:nema)
  end

  def show
    @hero = Hero.includes(:planet).find(params[:id])
  end
end
