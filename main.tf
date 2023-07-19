resource "aws_ssm_parameter" "parameter" {
  name   = "test.test1"
  type   = "SecureString"
  value  = "Hello World"
  key_id = "91f66eef-725c-44da-8b67-33f53d25404f"
}