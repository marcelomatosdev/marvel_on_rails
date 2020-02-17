# frozen_string_literal: true

class HeroesController < ApplicationController
  def index
    @heroes = Hero.all
  end

  def show; end
end
