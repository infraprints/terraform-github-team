variable "teams" {
  type        = "list"
  description = "The GitHub team ids"
}

variable "maintainers" {
  type        = "list"
  description = "The list of maintainers to add to the team."
}

variable "members" {
  type        = "list"
  description = "The list of members to add to the team."
}
