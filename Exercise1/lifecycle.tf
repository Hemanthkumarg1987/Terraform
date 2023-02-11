resource "local_file" "pet" {
    filename = "./lifecycle.txt"
    content = "We love pets"
    file_permission = "0700"

    lifecycle {
      #create_before_destroy = true
      prevent_destroy = true
    }
  
}