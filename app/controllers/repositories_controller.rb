class RepositoriesController < ApplicationController
  def index
    @repos = GithubService.new(session).get_repos
  end

  def create
    response = GithubService.new(session).create_repo(params[:name])
    redirect_to '/'
  end
end
