variable "TAG" {
    default = "latest"
}

group "default" {
    targets = ["ffmpeg"]
}

target "ffmpeg" {
    dockerfile = "Dockerfile"
    tags = ["andrewchen5678/static-ffmpeg:${TAG}"]
}

target "ffmpeg_multi" {
    inherits=["ffmpeg"]
    platforms = ["linux/amd64", "linux/arm64"]
}

group "image-all" {
    targets = ["ffmpeg_multi"]
}
