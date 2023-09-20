# shows up in metadata as the version:
#
# sudo installer -pkg bazel-out/darwin-fastbuild/bin/macos-runner.pkg -target /
# sudo pkgutil --pkg-info com.chickenandpork.macos-runner

# the pkgbuild.bzl logic needs a tag format vX.Y.Z
echo "VERSION $(git describe --tags --abbrev=0 2>/dev/null|echo v0.0.0)"
