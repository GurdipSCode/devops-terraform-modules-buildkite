resource "buildkite_cluster_queue" "opentofu_queue" {
  cluster_id = buildkite_cluster.primary.id
  key        = "OpenTofu"
}

resource "buildkite_cluster_queue" "python_queue" {
  cluster_id = buildkite_cluster.primary.id
  key        = "Python"
}

# create a queue to put pipeline builds in
resource "buildkite_cluster_queue" "opa_queue" {
  cluster_id = buildkite_cluster.primary.id
  key        = "OPA"
}
