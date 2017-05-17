class Github

  # https://api.github.com/users/lucachaves/orgs
  def list_organizations(user)
    uri = URI("https://api.github.com/users/lucachaves/orgs")
    json_str = Net::HTTP.get(uri)
    orgs = JSON.parse(json_str)

    Hash[
      orgs.map{|org|
        [
          org["login"].to_sym,
          "https://github.com/#{org['login']}"
        ]
      }
    ]
  end

  # kind - /:organization|:user/
  # https://api.github.com/orgs/ifpb/repos
  # https://api.github.com/users/lucachaves/repos
  def list_repositories(account, kind = :organization)

  end


end
