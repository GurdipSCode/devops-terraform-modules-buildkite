variable "pipelines" {
  description = "Buildkite pipelines to create"
  type = map(object({
    repository    = string
    pipeline_file = optional(string, ".buildkite/pipeline.yml")
    branch        = optional(string, "main")
    description   = optional(string, "")
    tags          = optional(map(string), {})
  }))
}
