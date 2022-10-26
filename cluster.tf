resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "roboshop-${var.ENV}"
  engine                  = "docdb"
  master_username         = "admin1"
  master_password         = "roboshop1"
# True only during lab, in prod , we will take a snapshot and that time value will be false
  skip_final_snapshot     = true
}