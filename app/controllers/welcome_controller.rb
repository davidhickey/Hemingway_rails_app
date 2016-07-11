class WelcomeController <ApplicationController

def root
  @ideas = Idea.all
  @ideas = Idea.all.order("created_at desc").limit(5)


end
end
