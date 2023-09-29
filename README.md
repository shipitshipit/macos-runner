# macos-runner
Installable Mac PKG to facilitate self-hosted GitHub runners on MacOS hardware

This is low-quality project that seeks to package some of the complexity of
quickly activating GitHub Action Runners on standard MacOS systems.  Releases
should offer Arch-specific PKGs rather than fat/multi-arch, and still require a
bit of manual work as shown below (almost rising to the level of Ansible, or
pre-install/post-install, or similar automation but still fairly high on
entropy to lock-down as a script).

# Current Usage
 - `bazel build //...`
 - `sudo installer -pkg bazel-out/darwin-fastbuild/bin/macos-runner.pkg -target /`
 - `sudo chown -R {build user} /usr/local/actions-runner`
 - `sudo su - {build user} -c 'cd /usr/local/actions-runner && ./config.sh --url https://github.com/shipitshipit --token THETOKENTHETOKENTHETOKEN'`
 - `sudo su - {build user} -c 'cd /usr/local/actions-runner && ./run.sh'`  (then ctrl-c)
 - `sudo su - {build user} -c 'cd /usr/local/actions-runner && ./svc.sh' install`
 - `sudo chown root:wheel  /Users/{build user}/Library/LaunchAgents/actions.runner.shipitshipit.*`
 - `sudo launchctl load -w  /Users/gar/Library/LaunchAgents/actions.runner.shipitshipit.*`

You'll need to ensure there's a `python3` -- https://www.python.org/downloads/macos/ if you don't have on that system

