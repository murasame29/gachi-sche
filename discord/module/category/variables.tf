variable "server_id" {
  description = "サーバーID"
  type = string
}

variable "category_name" {
  type = string
}

variable "position" {
  type = number
  description = "デフォルトは最大値の2147483647になってるので、一番下に作られます"
  default = 2147483647
}

variable "txt_channels" {
  type = map(object({
    position = number
  }))
  description = "key: チャンネル名, position: 配置位置"

  default = {
    "main" = {
      position = 1
    }
    "random" = {
      position = 2
    }
    "vc-1" = {
      position = 3
    }
  }
}

variable "voice_channels" {
  type = map(object({
    position = number
  }))
  default = {
    "vc1" = {
      position = 4
    }
  }
}
