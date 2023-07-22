resource "aws_ssm_parameter" "parameters" {
  count   = length(var.parameters)
  name    = var.parameters[count.index].name
  type    = "String"
  value   = var.parameters[count.index].value

  key_id  = "91f66eef-725c-44da-8b67-33f53d25404f"
}

#
#resource "aws_ssm_parameter" "passwords" {
#  count   = length(var.passwords)
#  name    = var.passwords[count.index].name
#  type    = "SecureString"
#  value   = var.passwords[count.index].value
#
#  key_id  = "91f66eef-725c-44da-8b67-33f53d25404f"
#}

## Passwords are not at all meant to keep inside the code at all, Here since it is a lab we are doing it to save the time.
## One of the scenario that mostly used in real way is , Enter the passwords manually in Parameter Store by someone for passwords.
resource "aws_ssm_parameter" "passwords" {
  count  = length(var.passwords)
  name   = var.passwords[count.index].name
  value  = var.passwords[count.index].value
  type   = "SecureString"
  key_id = "91f66eef-725c-44da-8b67-33f53d25404f"
}