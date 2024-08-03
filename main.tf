# Create a newrelic dashboard which having widgets of markdown, billboard, line, table, bar and  each widget type having 2-3 charts
# Using normal terraform script
# Using for-each module
# Using for-each, dynamic block with module
# Using count

module "dashboard" {
  source = "./dashboard"
  region = var.region
  nr_account_id = var.nr_account_id
  nr_api_key = var.nr_api_key
  dashboard = var.dashboard
  widget_map = var.widget_map
}