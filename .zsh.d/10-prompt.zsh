# Set prompt.
autoload -U colors; colors
PROMPT="%F{cyan}[%n@%m:%/]%f"$'\n'"%(?,%F{green},%F{red})%#%f "
