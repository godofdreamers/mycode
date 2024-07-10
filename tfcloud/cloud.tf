terraform {
  cloud {
    organization = "LucidNight"

    workspaces {
      name = "my-example"
    }
  }
}
