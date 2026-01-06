resource "buildkite_pipeline" "this" {
  for_each = var.python_pipelines

  name        = each.key
  repository  = each.value.repository
  description = each.value.description

  pipeline_file        = each.value.pipeline_file
  branch_configuration = each.value.branch
  tags                 = each.value.tags
}

resource "buildkite_pipeline" "opentofu_pipelines" {
  for_each = var.opentofu_pipelines

  name        = each.key
  repository  = each.value.repository
  description = each.value.description

  pipeline_file        = each.value.pipeline_file
  branch_configuration = each.value.branch
  tags                 = each.value.tags
}

resource "buildkite_pipeline" "opa_pipelines" {
  for_each = var.opa_pipelines

  name        = each.key
  repository  = each.value.repository
  description = each.value.description

  pipeline_file        = each.value.pipeline_file
  branch_configuration = each.value.branch
  tags                 = each.value.tags
}
