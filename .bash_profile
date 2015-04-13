# ----------------------------------------------------------------------------
#
# Description: This file holds my BASH configurations and aliases
# Sections:
# 1.    Environment Configuration
# 2.    Terminal Remappings (remapping defaults and adding functionality
# 3.    File and Folder Management
# 4.    Searching
# 5.    Process Management
# 6.    Networking
# 7.    System Operations & Information
# 8.    Web Development
# 9.    Reminders & Notes

# ----------------------------------------------------------------------------

#   ------------------------------j
#   1. ENVIRONMENT CONFIGURATION
#   ------------------------------j

#   Setting up the prompt, "string" some of these bad boys together
#   ----------------------------------------------------------------------------

# REFERENCES
#export PS1="\d" #Date in "DayOfWeek Month DayOfMonth" format
#export PS1="\h" #hostname
#export PS1="\n" #newline , you can probably make some annoying character art
#with this on
#export PS1="\s" #The name of the Shell, probably aways gonna be -bash
#export PS1="\@"  #time in 12 hr am/pm format eg 06:38 PM (Best in my opinion)
#export PS1="\t" #time in 24 hr format eg 18:05
#export PS1="\T" #time in 12 hr format eg 06:15:33
#export PS1="\A" #same as \t but without seconds
#export PS1="\u" #Username of current user
#export PS1="\v" #version of Bash... don't include unless there's some weird
#reason to
#export PS1="\w" #The current working directory, with $HOME abbreviated with a
#tilde (uses the $PROMPT_DIRTRIM variable)
#export PS1="\!" #The history number of this command
#export PS1="\#" #Command number of this command
#export PS1="\[ (control sequence) \]" #Embed a terminal control sequence into
#the prompt! ( "\[ \]" hides, or doesn't display" the characters contained in it)

# MY PROMPT
export PS1="\n✌️ 🌇 🐣 🎉 💻 🛀 💊  💉 🗽 💰 💵 💸 🇩🇪 🔬 🔭 🏦 🗾 🇯🇵 🎵 ⚽️🎣🍺 👍 🍻 🍸 🍹 🍷 🍴  🌅 🚀 🇺🇸 \n\d, \@\n✌︎⚽︎ \u⚛∰ \n\w\nThis is the \#th command\nTurn ⇮↑⇫⇑⥉⟰ ⬆︎ ☝︎ ⥣ ⤊ ⤉⇧↥⇭⇯\nYou're doing great! Amazing! λ: "
export PS2="| => "

#   Set Paths
#   ----------------------------------------------------------------------------

alias ocaml="ledit ocaml"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

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





# Setting up the prompt, "string" some of these bad boys together

#export PS1="\d" #Date in "DayOfWeek Month DayOfMonth" format

#export PS1="\h" #hostname

#export PS1="\n" #newline , you can probably make some annoying character art
#with this on

#export PS1="\s" #The name of the Shell, probably aways gonna be -bash


#export PS1="\@"  #time in 12 hr am/pm format eg 06:38 PM (Best in my opinion)
#export PS1="\t" #time in 24 hr format eg 18:05
#export PS1="\T" #time in 12 hr format eg 06:15:33
#export PS1="\A" #same as \t but without seconds

#export PS1="\u" #Username of current user

#export PS1="\v" #version of Bash... don't include unless there's some weird
#reason to

#export PS1="\w" #The current working directory, with $HOME abbreviated with a
#tilde (uses the $PROMPT_DIRTRIM variable)

#export PS1="\!" #The history number of this command

#export PS1="\#" #Command number of this command

#export PS1="\[ (control sequence) \]" #Embed a terminal control sequence into
#the prompt! ( "\[ \]" hides, or doesn't display" the characters contained in it)

# MY PROMPT

export PS1="\n✌️ 🌇 🐣 🎉 💻 🛀 💊  💉 🗽 💰 💵 💸 🇩🇪 🔬 🔭 🏦 🗾 🇯🇵 🎵 ⚽️🎣🍺 👍 🍻 🍸 🍹 🍷 🍴  🌅 🚀 🇺🇸 \n\d, \@\n✌︎⚽︎ \u⚛∰ \n\w\nThis is the \#th command\nTurn ⇮↑⇫⇑⥉⟰ ⬆︎ ☝︎ ⥣ ⤊ ⤉⇧↥⇭⇯\nYou're doing great! Amazing! λ: "






#✌️ 🌇 🐣 🎉 💻 🛀 💊  💉 🗽 💰 💵 💸 🇩🇪 🔬 🔭 🏦 🗾 🇯🇵 🎵  ⚽️🎣🍺 👍 🍻 🍸 🍹 🍷 🍴  🌅 🚀 🇺🇸



##
# Your previous /Users/AlexHahn/.bash_profile file was backed up as /Users/AlexHahn/.bash_profile.macports-saved_2014-10-06_at_22:04:56
##

# MacPorts Installer addition on 2014-10-06_at_22:04:56: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# OPAM configuration
. /Users/AlexHahn/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
