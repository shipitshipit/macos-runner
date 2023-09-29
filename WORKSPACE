workspace(name = "macos-runner")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

#http_archive(
#    name = "actions_runner",
#    url = "https://github.com/actions/runner/releases/download/v2.309.0/actions-runner-osx-x64-2.309.0.tar.gz",
#    # sha256 =
#    build_file_content = """exports_files(["config.sh"])""",
#)

http_file(
    name = "actions_runner_tar_osx_x64",
    downloaded_file_path = "file.tar.gz",
    sha256 = "b90f41c2f3af19c4feea5e70d32c6634e800663af95cdd892a322b304d5ca2de",  # matches SHA256 on github instructions
    url = "https://github.com/actions/runner/releases/download/v2.308.0/actions-runner-osx-x64-2.308.0.tar.gz",
)

http_file(
    name = "actions_runner_tar_osx_arm64",
    downloaded_file_path = "file.tar.gz",
    sha256 = "a8b2c25868e4296cbd203342754223dd2cc17f91585592c99ccd85b587d05310",  # matches SHA256 on github instructions
    url = "https://github.com/actions/runner/releases/download/v2.308.0/actions-runner-osx-arm64-2.308.0.tar.gz",
)
