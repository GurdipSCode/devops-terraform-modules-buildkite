resource "buildkite_organization" "settings" {
  allowed_api_ip_addresses = ["0.0.0.0/0"]
  enforce_2fa              = false
}
