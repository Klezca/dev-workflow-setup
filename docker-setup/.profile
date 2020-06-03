# Append this to profile config

# Note: Bash on Windows does not currently apply umask properly, fix it here.
if [[ "$(umask)" = "0000" ]]; then
  umask 0022
fi
