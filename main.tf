resource "aws_ssm_parameter" "parameters" {
  count   = length(var.parameters)
  name    = var.parameters[count.index].name
  type    = "String"
  value   = var.parameters[count.index].value

  key_id  = "91f66eef-725c-44da-8b67-33f53d25404f"
}