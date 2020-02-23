# frozen_string_literal: true

class ComicsController < ApplicationController
  def index
    @comics = Comic.all.order(:title).page(params[:page]).per(30)
  end

  def show
    @comic = Comic.find(params[:id])
  end

  def search
    @comics = Comic.where('title LIKE ?', "%#{params[:search_term]}%").order(:title).page(params[:page]).per(30)
  end
end
