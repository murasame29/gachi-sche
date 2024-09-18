terraform {
  required_providers {
    discord = {
      source  = "aequasi/discord"
      version = "0.0.4"
    }
  }
}

provider "discord" {
  token = var.discord_token
}

module "dev_categories" {
  source = "./module/category"

  category_name = "development"
  server_id = var.server_id
  txt_channels = {
    "雑談" = {
      position = 1
    }

    "資料" = {
      position = 2
    }

    "アイディア" = {
      position = 3
    }
  }
}