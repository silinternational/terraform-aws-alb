/*
 * Required variables
 */
variable "app_name" {
  type = string
}

variable "app_env" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
}

variable "certificate_arn" {
  type = string
}

/*
 * Optional variables
 */
variable "port" {
  type    = string
  default = 80
}

variable "protocol" {
  type    = string
  default = "HTTP"
}

variable "alb_name" {
  description = "Manual override for ALB name (which is otherwise assembled from other given data)"
  type        = string
  default     = ""
}

variable "internal" {
  type    = bool
  default = false
}

variable "ssl_policy" {
  type    = string
  default = "ELBSecurityPolicy-TLS13-1-2-2021-06"
}

variable "tg_name" {
  description = "Manual override for ALB Target Group name (which is otherwise assembled from other given data)"
  type        = string
  default     = ""
}

variable "health_check_interval" {
  default = "30"
}

variable "health_check_path" {
  default = "/"
}

variable "health_check_port" {
  default = "traffic-port"
}

variable "health_check_protocol" {
  default = "HTTP"
}

variable "health_check_timeout" {
  default = "5"
}

variable "healthy_threshold" {
  default = "5"
}

variable "unhealthy_threshold" {
  default = "2"
}

variable "health_check_status_codes" {
  default = "200"
}

variable "idle_timeout" {
  default = "60"
}

variable "load_balancer_type" {
  default = "application"
}

variable "enable_ipv6" {
  description = "Set to `true` to enable IPv6"
  type        = bool
  default     = false
}

variable "disable_public_ipv4" {
  description = "false: use public IPv4; true: if enable_ipv6 is true, ip_address_type will be \"dualstack-without-public-ipv4\", otherwise, \"dualstack\""
  type        = bool
  default     = false
}
