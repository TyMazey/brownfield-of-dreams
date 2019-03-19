class DashboardFacade
  def initialize(user)
    @user = user
    @github = GithubService.new(@user)
  end

  def repositories
    @repositories ||= @github.user_repositories[0..4].map do |repository_info|
      Repository.new(repository_info)
    end
  end

  def followers
    @followers ||= @github.user_followers.map do |github_user_info|
      GithubUser.new(github_user_info)
    end
  end

  def following
    @following ||= @github.user_following.map do |github_user_info|
      GithubUser.new(github_user_info)
    end
  end
end
