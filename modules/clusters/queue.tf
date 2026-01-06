variable "cluster_queues" {
  description = "Buildkite cluster queues to create"
  type = map(object({
    # room to grow later (e.g. description, tags)
  }))
}
