# frozen_string_literal: true

class HeroesController < ApplicationController
  def index
    @heroes = Hero.includes(:planet).order(:name).page(params[:page])
  end

  def show
    @hero = Hero.includes(:planet).find(params[:id])
  end

  def search
    @heroes = Hero.where('name LIKE ?', "%#{params[:search_term]}%")
  end
end
