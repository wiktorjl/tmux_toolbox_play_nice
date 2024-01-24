# TMUX config to accomodate Toolbx
## What is the issue?
Tmux is not aware if it is run from inside a Toolbx container. Ideally, if you are inside of a container and run tmux, the new session should be inside the container. This is not always the case. This script fixes (I hope) the issue.

## What is causing this?
The first time you run tmux, a new server is started and that inherits all env variables. However, each new session inherits from the server, not from the shell that spawned the session.

## Fix?
Use the Toolbx container name as part of tmux's socket name. This results in new tmux server being started for each new container, thus grabbing fresh env variables.

## Install
Add contents of .bashrc in this repository to your own config.



