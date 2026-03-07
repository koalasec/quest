# This is similar to an ecs cluster
resource "ibm_code_engine_project" "quest" {
  name = "quest-project"
}

# Deploy a container as a Code Engine app
resource "ibm_code_engine_app" "quest" {
  project_id      = ibm_code_engine_project.quest.project_id
  name            = "quest"
  image_reference = "ghcr.io/koalasec/quest:latest"  # this is a public image for the sake of the quest
  image_port      = 3000

  scale_cpu_limit              = "0.5"
  scale_memory_limit           = "1G"
  scale_min_instances          = 0
  scale_max_instances          = 3
  scale_initial_instances      = 1
}
