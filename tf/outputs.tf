# this will give me the tls enabled link to my little quest
output "app_url" {
  value = ibm_code_engine_app.quest.endpoint
}