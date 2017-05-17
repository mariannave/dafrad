class Github

  def initialize()
  end

  # https://api.github.com/users/lucachaves/orgs
  def list_organizations(user)
  end

  # kind - /:organization|:user/
  # https://api.github.com/orgs/ifpb/repos
  # https://api.github.com/users/lucachaves/repos
  def list_repositories(account, kind = :organization)
  end


end
