terraform {
  required_providers {
    discord = {
      source = "aequasi/discord"
      version = "0.0.4"
    }
  }
}

resource "discord_category_channel" "main" {
  name = var.category_name
  server_id = var.server_id
  position = var.position
}

resource "discord_text_channel" "main" {
  for_each = var.txt_channels

  name = each.key
  server_id = var.server_id
  position = each.value.position
  category = resource.discord_category_channel.main.id
}

resource "discord_voice_channel" "main" {
  for_each = var.voice_channels

  name = each.key
  server_id = var.server_id
  position = each.value.position
  category = resource.discord_category_channel.main.id
}
