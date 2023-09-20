workspace(name = "macos-runner")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

#http_archive(
#    name = "actions_runner",
#    url = "https://github.com/actions/runner/releases/download/v2.309.0/actions-runner-osx-x64-2.309.0.tar.gz",
#    # sha256 =
#    build_file_content = """exports_files(["config.sh"])""",
#)

http_file(
    name = "actions_runner_tar_osx_x64",
    downloaded_file_path = "file.tar.gz",
    sha256 = "cce9394ff3e619d24c6a285fb2a633202c115f058437675b53fedd8fb01ec7ce",  # matches SHA256 on github instructions
    url = "https://github.com/actions/runner/releases/download/v2.309.0/actions-runner-osx-x64-2.309.0.tar.gz",
)

http_file(
    name = "actions_runner_tar_osx_arm64",
    downloaded_file_path = "file.tar.gz",
    sha256 = "67c1accb9cdc2138fc797d379c295896c01c8f5f4240e7e674f99a492bd1c668",  # matches SHA256 on github instructions
    url = "https://github.com/actions/runner/releases/download/v2.309.0/actions-runner-osx-arm64-2.309.0.tar.gz",
)
