output "migration_lambda_name" {
  value       = aws_lambda_function.migration.function_name
  description = "The name of the lambda used for database migrations"
}

output "migration_lambda_arn" {
  value       = aws_lambda_function.migration.arn
  description = "The ARN of the lambda used for database migrations"
}

output "database_host" {
  value       = aws_rds_cluster.database.endpoint
  description = "The write endpoint for the database cluster"
}

output "database_name" {
  value       = aws_rds_cluster.database.database_name
  description = "The database name for the service"
}

output "bastion_public_ip" {
  value       = aws_instance.bastion.public_ip
  description = "The ip address of the bastion"
}

output "database_producer_path_application" {
  value       = akeyless_producer_mysql.application.name
  description = "The path to the database producer to be used by the application"
}

output "database_producer_path_migration" {
  value       = akeyless_producer_mysql.migration.name
  description = "The path to the database producer to be used by the migration"
}
