# Theme based on Darkblood theme from oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/darkblood.zsh-theme

# user host
function __user_host
  echo -n (set_color red)"["(set_color --bold white)$USER(set_color normal)(set_color red)@(set_color --bold white)(cat /etc/hostname|cut -d . -f 1)(set_color normal)(set_color red)"]" (set_color normal)
end

# git status
function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function __git_status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info '<'$git_branch"*"'>'
    else
      set git_info '<'$git_branch'>'
    end

    echo -n (set_color yellow) $git_info (set_color normal)
  end
end

# get current working tty
function __get_tty
  echo -n (set_color red)"["(set_color --bold white)(tty)(set_color normal)(set_color red)"]"(set_color normal)
end

# get current working directory and handle ~ (home) symbol
function __current_path
  echo -n (set_color --bold white)(string replace "/home/$USER" "~" (pwd))(set_color normal)
end

# change actual shell look
function fish_prompt
  # variable assignment
  set -g fish_color_error red --bold
  set -g fish_color_command green
  set -g fish_color_end white

  set -l st $status

  # change into home directory
  cd /home/$USER

  # handle shell look
  echo -n (set_color red)"┌"(set_color normal)
  __user_host
  __git_status
  __get_tty
  if [ $st != 0 ];
    echo -n (set_color red) "["(set_color --bold white)$st(set_color normal)(set_color red)"]"(set_color normal)
  end
  echo -e ''
  echo -n (set_color red)"└["(set_color normal)
  __current_path
  echo -n (set_color red)"]> "(set_color normal)
end
