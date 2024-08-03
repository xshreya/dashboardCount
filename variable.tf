variable "nr_api_key" {
  type = string
}

variable "nr_account_id" {
  type = number
}

variable "region" {
  type = string
}

variable "dashboard" {
  type = any
}

variable "widget_map" {
  type = list(any)
}