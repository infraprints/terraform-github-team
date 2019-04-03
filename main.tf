locals {
  members     = "${setproduct(var.teams, var.members)}"
  maintainers = "${setproduct(var.teams, var.maintainers)}"
  index_team  = 0
  index_user  = 1
}

resource "github_team_membership" "members" {
  count    = "${length(local.members)}"
  team_id  = "${element(element(local.members, count.index), local.index_team)}"
  username = "${element(element(local.members, count.index), local.index_user)}"
  role     = "member"
}

resource "github_team_membership" "maintainers" {
  count    = "${length(local.maintainers)}"
  team_id  = "${element(element(local.maintainers, count.index), local.index_team)}"
  username = "${element(element(local.maintainers, count.index), local.index_user)}"
  role     = "maintainer"
}
