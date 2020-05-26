# Spaceship_PROMPT
[[ -n ${SSH_CLIENT} ]] && PROMPT_SYMBOL=' ' || PROMPT_SYMBOL=''
TIME_FORMAT="%D{%H:%M:%S}"
GITHUB_ICON=''
EXECUTION_TIME_PREFIX='took' #    
EXECUTION_TIME_THRESHOLD=1

# ORDER
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  docker        # Docker section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
# Time
SPACESHIP_TIME_SHOW=True
SPACESHIP_TIME_PREFIX=""
SPACESHIP_TIME_FORMAT="$TIME_FORMAT"

# Exec Time
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_PREFIX="$EXECUTION_TIME_PREFIX "
SPACESHIP_EXEC_TIME_ELAPSED="$EXECUTION_TIME_THRESHOLD"

# User
SPACESHIP_USER_SHOW=True

# Host
SPACESHIP_HOST_SHOW=True
SPACESHIP_HOST_PREFIX="@"

# Dir
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=3

# Exit Code
SPACESHIP_EXIT_CODE_SHOW=True
