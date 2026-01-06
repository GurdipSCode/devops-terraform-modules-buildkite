resource "buildkite_pipeline" "this" {
  for_each = var.python_pipelines

  name        = each.key
  repository  = each.value.repository
  description = each.value.description

  pipeline_file        = each.value.pipeline_file
  branch_configuration = each.value.branch
  tags                 = each.value.tags
}
