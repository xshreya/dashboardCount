resource "newrelic_one_dashboard" "exampledash" {
count = length(var.widget_map)
    name        = var.dashboard.name
    permissions = var.dashboard.permissions

    page {
        name = var.dashboard.page.name

        widget_billboard {
            title  = var.widget_map[count.index].widget_billboard.title
            row    = var.widget_map[count.index].widget_billboard.row
            column = var.widget_map[count.index].widget_billboard.column
            width  = var.widget_map[count.index].widget_billboard.width
            height = var.widget_map[count.index].widget_billboard.height

            nrql_query {
                query = var.widget_map[count.index].widget_billboard.nrql_query.query
            }
        }


        widget_bar {
            title  = var.widget_map[count.index].widget_bar.title
            row    = var.widget_map[count.index].widget_bar.row
            column = var.widget_map[count.index].widget_bar.column
            width  = var.widget_map[count.index].widget_bar.width
            height = var.widget_map[count.index].widget_bar.height

            nrql_query {
                query = var.widget_map[count.index].widget_bar.nrql_query.query

            }

        }


        widget_line {
            title = var.widget_map[count.index].widget_line.title
            row = var.widget_map[count.index].widget_line.row
            column = var.widget_map[count.index].widget_line.column
            width = var.widget_map[count.index].widget_line.width
            height = var.widget_map[count.index].widget_line.height
            ignore_time_range = var.widget_map[count.index].widget_line.ignore_time_range
            y_axis_left_max = var.widget_map[count.index].widget_line.y_axis_left_max
            y_axis_left_min = var.widget_map[count.index].widget_line.y_axis_left_min
            legend_enabled = var.widget_map[count.index].widget_line.legend_enabled
            
            nrql_query {
                query = var.widget_map[count.index].widget_line.nrql_query.query
            }
            
            null_values {
                null_value = var.widget_map[count.index].widget_line.null_values.null_value
                series_overrides { 
                    null_value = var.widget_map[count.index].widget_line.null_values.series_overrides.null_value
                    series_name = var.widget_map[count.index].widget_line.null_values.series_overrides.series_name
                }
            }
            
            units {
                unit = var.widget_map[count.index].widget_line.units.unit
                series_overrides { 
                    unit = var.widget_map[count.index].widget_line.units.series_overrides.unit
                    series_name = var.widget_map[count.index].widget_line.units.series_overrides.series_name
                }
            }
            
            colors {
                color = var.widget_map[count.index].widget_line.colors.color
                series_overrides {
                color = var.widget_map[count.index].widget_line.colors.series_overrides.color
                series_name = var.widget_map[count.index].widget_line.colors.series_overrides.series_name
                }
            }
            
            y_axis_left_zero = var.widget_map[count.index].widget_line.y_axis_left_zero
            
            y_axis_right {
                y_axis_right_max = var.widget_map[count.index].widget_line.y_axis_right.y_axis_right_max
                y_axis_right_min = var.widget_map[count.index].widget_line.y_axis_right.y_axis_right_min
                y_axis_right_series = var.widget_map[count.index].widget_line.y_axis_right.y_axis_right_series
                y_axis_right_zero = var.widget_map[count.index].widget_line.y_axis_right.y_axis_right_zero
            }
            
            threshold {
                name = var.widget_map[count.index].widget_line.threshold.name
                from = var.widget_map[count.index].widget_line.threshold.from
                to = var.widget_map[count.index].widget_line.threshold.to
                severity = var.widget_map[count.index].widget_line.threshold.severity
            }
            
            is_label_visible = var.widget_map[count.index].widget_line.is_label_visible
        }
    }

  # variable {
  #     default_values     = ["value"]
  #     is_multi_selection = true
  #     item {
  #       title = "item"
  #       value = "ITEM"
  #     }
  #     name = "variable"
  #     nrql_query {
  #       # account_ids = [12345]
  #       query       = "FROM Transaction SELECT average(duration) FACET appName"
  #     }
  #     replacement_strategy = "default"
  #     title                = "title"
  #     type                 = "nrql"
  # }
}