resource "buildkite_pipeline" "signed-pipeline" {
  name       = "my-signed-pipeline"
  repository = local.repository
  cluster_id = data.buildkite_cluster.default.id
  steps      = data.buildkite_signed_pipeline_steps.signed-steps.steps
}
