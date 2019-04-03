output "members" {
  value       = "${local.members}"
  description = "Member and team pairs for the team."
}

output "maintainers" {
  value       = "${local.maintainers}"
  description = "Maintainer and team pairs for the team."
}

output "usernames" {
  value       = "${concat(var.members, var.maintainers)}"
  description = "All the users within the teams."
}
