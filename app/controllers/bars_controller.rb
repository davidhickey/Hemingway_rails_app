class BarsController < ApplicationController
  include BarsHelper

def index
  @bars = Bar.all
  @ideas = Idea.all
end

def show
  @bar = Bar.find(params[:id])

#changed below from @idea = Idea.new
  @ideas = Idea.all
  @idea = Idea.new
  # testing one below @idea.bar_id = @bar.id
  @idea.bar_id = @bar.id

end

def new
  @bar = Bar.new
end

def create
  @bar = Bar.new(bar_params)
  @bar.save

  flash.notice = "Bar '#{@bar.name}' Created!"

  redirect_to bar_path(@bar)
end

def destroy
  @bar = Bar.find(params[:id])
  @bar.destroy

  flash.notice = "Bar '#{@bar.name}' Deleted!"

  redirect_to bars_path
end

def edit
  @bar = Bar.find(params[:id])
end

def update
  @bar = Bar.find(params[:id])
  @bar.update(bar_params)

  flash.notice = "Bar '#{@bar.name}' Updated!"

  redirect_to bar_path(@bar)
end

end
