# ----------------------------------------------------------------------------
#
# Description: This file holds my BASH configurations and aliases
# Sections:
# 1.    Environment Configuration
#   1.1     Setting Up The Prompt
#   1.2     Aliases
# 2.    Terminal Remappings (remapping defaults and adding functionality
# 3.    File and Folder Management
# 4.    Searching
# 5.    Process Management
# 6.    Networking
# 7.    System Operations & Information
# 8.    Web Development
# 9.    Reminders & Notes

# ----------------------------------------------------------------------------

#   ------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   ------------------------------

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

         #  --------------------------
         #  1.1 Setting Up The Prompt
         #  --------------------------

# REFERENCES
# "\d" Date in "DayOfWeek Month DayOfMonth" format
# "\h" Hostname
# "\n" Newline , you can probably make some annoying ASCII character art with this
# "\s" The name of the Shell (bash, ksh, etc)
# "\@" Time in 12 hr am/pm format eg 06:38 PM (Best in my opinion)
# "\t" Time in 24 hr format eg 18:05
# "\T" Time in 12 hr format eg 06:15:33
# "\A" Same as \t but without seconds
# "\u" Username of current user
# "\v" Version of Bash... don't include unless there's some weird reason to
# "\w" The current working directory, with $HOME abbreviated with a
       #tilde (uses the $PROMPT_DIRTRIM variable)
# "\!" The history number of this command
# "\#" Command number of this command
# "\[ (control sequence) \]" Embed a terminal control sequence into
       #the prompt! ( "\[ \]" hides, or doesn't display" the characters contained in it)

# MY PROMPT (merge)
export PS1="\n✌️ 🌇 🐣 🎉 💻 🛀 💊  💉 🗽 💰 💵 💸 🇩🇪 🔬 🔭 🏦 🗾 🇯🇵 🎵 ⚽️🎣🍺 👍 🍻 🍸 🍹 🍷 🍴  🌅 🚀 🇺🇸 \n\d, \@\n✌︎⚽︎ \u⚛∰ \n\w\nThis is the \#th command\nTurn ⇮↑⇫⇑⥉⟰ ⬆︎ ☝︎ ⥣ ⤊ ⤉⇧↥⇭⇯\nYou're doing great! Amazing! λ: "
export PS1="\n\[\e[33;1m\]\u@\H\[\e[35;1m\] Shell:\s\l \[\e[31;1m\]\d \@\[\e[37;1m\] This is command \#\n\[\e[32;1m\]\w\[\e[36;1m\] => \[\e[0m\]"
export PS2="| => "

       
         #  --------------------------
         #  1.2 Aliases (RESEARCH PUTTING IN ANOTHER FILE)
         #  --------------------------
alias clear='printf "\033c"'

# ls aliases
alias ls='ls --color=auto'  #ls has colors (TODO: google how to set)
alias ll='ls -l'            #ll is list long format
alias la='ls -a'            #la is list everything (hidden too)
alias lt='ls -lt'           #lt is list in long format in order
alias lla='ls -la'          #lla is list everything long format
alias lat='ls -lat'         #lat is list everything in long format in order

# wc aliases
alias wcl='wc -l' #wcl is line count
alias wcw='wc -w' #wcw is word count
alias wcc='wc -m' #wcc is character count
alias wcb='wc -c' #wcb is byte count

# find aliases
alias findfile='find . -name' # recursive search by name

# grep aliases
alias grep='grep --color=auto' #grep should just always have color
export GREP_COLOR='1;33' #Set the regex match color
alias grepn='grep -n'    #Displays the line number
alias grepc='grep -c'    #Give count of matched LINES (not words)
alias grepr='grep -r'    #Recursive grep (all files, all dirs under .)
alias grepi='grep -i'    #grepi is case insensitive grep
alias grepv='grep -v'    #Inverr grep, useful for returning all 
alias ocaml="ledit ocaml"

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Set history length and history file sie
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessaary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
