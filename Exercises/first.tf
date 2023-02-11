resource "local_file" "games" {
  filename = var.filename
  content  = "My Favourite pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.seperator
  length = var.length
}

output pet-name {
  value = random_pet.my-pet.id
}