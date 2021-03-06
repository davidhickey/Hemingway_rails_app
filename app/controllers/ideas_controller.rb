class IdeasController < ApplicationController
  include IdeasHelper

def index
  @ideas = Idea.all
end

def show
  @idea = Idea.find(params[:id])
  @idea.bar_id = params[:bar_id]

  # @comment = Comment.new
  # @comment.idea_id = @idea.id
end

def new
  @idea = Idea.new
end

def create
  @idea = Idea.new(idea_params)
  @idea.bar_id = params[:bar_id]
  @idea.save

  flash.notice = "Idea '#{@idea.title}' Created!"

# changed below to @bar, nothing before
  redirect_to bars_path
end

def destroy
  #@idea.bar_id = Idea.find(params[:bar_id])
  @idea = Idea.find(params[:id])
  #@idea.bar_id = params[:bar_id]
  @idea.destroy
  #@idea.bar_id.destroy

  flash.notice = "Idea '#{@idea.title}' Deleted!"

  redirect_to ideas_path
end

def edit
  @idea = Idea.find(params[:id])
end

def update
  @idea = Idea.find(params[:id])
  @idea.update(idea_params)

  flash.notice = "Idea '#{@idea.title}' Updated!"

#changing from idea_path(@idea)
  redirect_to idea_path
end

end
