resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "roboshop-${var.EVV}"
  engine                  = "docdb"
  master_username         = ??????
  master_password         = ??????
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}