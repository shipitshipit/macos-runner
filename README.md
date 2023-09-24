# macos-runner
Build config for self-hosted GitHub runners on MacOS hardware

# Current Usage
 - `bazel build //...`
 - `sudo installer -pkg bazel-out/darwin-fastbuild/bin/macos-runner.pkg -target /`
 - `sudo chown -R {build user} /usr/local/actions-runner`
 - `sudo su - {build user} -c 'cd /usr/local/actions-runner && ./config.sh --url https://github.com/shipitshipit --token THETOKENTHETOKENTHETOKEN'`
 - `sudo su - {build user} -c 'cd /usr/local/actions-runner && ./run.sh'`  (then ctrl-c)
 - `sudo su - {build user} -c 'cd /usr/local/actions-runner && ./svc.sh' install`
 - `sudo chown root:wheel  /Users/{build user}/Library/LaunchAgents/actions.runner.shipitshipit.*`
 - `sudo launchctl load -w  /Users/gar/Library/LaunchAgents/actions.runner.shipitshipit.*`

