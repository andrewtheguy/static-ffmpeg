group "default" {
    targets = ["ffmpeg"]
}

target "ffmpeg" {
    dockerfile = "Dockerfile"
    tags = ["andrewchen5678/static-ffmpeg"]
}

target "ffmpeg_multi" {
    inherits=["ffmpeg"]
    platforms = ["linux/amd64", "linux/arm64"]
}

group "image-all" {
    targets = ["ffmpeg","ffmpeg_multi"]
}
