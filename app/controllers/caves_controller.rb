class CavesController < ApplicationController
  include CavesHelper

def index
  @caves = Cafe.all
end

def show
  @cafe = Cafe.find(params[:id])

  # @comment = Comment.new
  # @comment.cafe_id = @cafe.id
end

def new
  @cafe = Cafe.new
end

def create
  @cafe = Cafe.new(cafe_params)
  @cafe.save

  flash.notice = "Cafe '#{@cafe.name}' Created!"

  redirect_to cafe_path(@cafe)
end

def destroy
  @cafe = Cafe.find(params[:id])
  @cafe.destroy

  flash.notice = "Cafe '#{@cafe.name}' Deleted!"

  redirect_to cafes_path
end

def edit
  @cafe = Cafe.find(params[:id])
end

def update
  @cafe = Cafe.find(params[:id])
  @cafe.update(cafe_params)

  flash.notice = "Cafe '#{@cafe.name}' Updated!"

  redirect_to cafe_path(@cafe)
end

end
