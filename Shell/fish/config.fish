if status is-interactive
    # Commands to run in interactive sessions can go here
end

# General shortcuts
alias btw="neofetch"
alias unlock-hardware="sudo rfkill unblock all"
alias charges="upower --dump | grep 'Device: \|percentage'"
alias device-fullcharges="upower --dump"
alias restart-de="~/Scripts/restart-desktop-environment.sh"

# Pacman shortcuts
alias pac-sync="sudo pacman -Syyy"
alias pac-install="sudo pacman -S"
alias pac-update="sudo pacman -Syyu"
alias pac-search="pacman -Ss"
alias pac-local-search="pacman -Qs"
alias pac-pkg-info="sudo pacman -Qi"
alias pac-local-install="sudo pacman -U"
alias pac-clear-cache="sudo pacman -Scc"
alias pac-unlock="sudo rm /var/lib/pacman/db.lck"
alias pac-orphans="pacman -Qdt"
alias pac-remove="sudo pacman -R"
alias pac-autoremove="sudo pacman -Rns"
alias pac-fullremove="sudo pacman -Rscn"
alias pac-url="sudo pacman -S -p"

# Yay shortcuts
alias yay-sync="yay -Syyy"
alias yay-install="yay -S"
alias yay-update="yay -Syyu"
alias yay-search="yay -Ss"
alias yay-search-local="yay -Qs"
alias yay-pkg-info="yay -Qi"
alias yay-local-install="yay -U"
alias yay-clear-cache="yay -Scc"
alias yay-remove="yay -R"
alias yay-autoremove="yay -Rns"
alias yay-fullremove="yay -Rscn"
