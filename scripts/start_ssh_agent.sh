#!/bin/bash

# check if an ssh_auth_sock exists and get path to it
sock_path=$(find /tmp/ssh-* -type s -name "agent*")

if [[ -z "$sock_path" ]]; then
  echo "No existing socket found..."
  echo "Killing all broken agents..."
  pkill ssh-agent # kill all broken agents

  # create new agent
  echo "Creating a new agent..."
  eval $(ssh-agent)

  # add key
  echo "Adding key..."
  ssh-add
  echo "Done!"
else
  # ssh-auth was found, so to get PID and SOCK...
  echo "Existing socket found at $sock_path..." 
  echo "Exporting variables..."
  export SSH_AUTH_SOCK="$sock_path" # export known sock path
  export SSH_AGENT_PID=$(pgrep ssh-agent) # get ssh-agent pid from pgrep

  echo "Adding key.."
  ssh-add

  echo "Done!"
fi

# # try and set vars from previous environment
# source ~/ssh-agent-environ
#
# # try ot add ssh-key
# echo "attempting to add ssh key..."
# SSH_AGENT_EXISTS=$(ssh-add -l)
#
# echo "ssh-add -l returned $SSH_AGENT_EXISTS"
#
# if [[ $SSH_AGENT_EXISTS != 0 || ]]; then
#   echo "ssh-agent not found :("
#
#   # create new ssh-agent
#   ssh-agent > ~/ssh-agent-environ
#   source ~/ssh-agent-environ
#
#   # adding key to new ssh-agent
#   eval $(ssh-add)
#   echo "ssh-key added!"
#
# else
#   eval $(ssh-add)
#   echo "ssh-key added!"
# fi
#

# PID=$(pgrep ssh-agent) 
#
# DOES_EXIST=$(pgrep -c ssh-agent)
# if [[ $DOES_EXIST == 0 ]]; then
#   # remove previous environ and don't display error if doesn't exist
#   echo "clearing previous environ..."
#   eval $(rm ssh-agent-environ) 2> /dev/null
#
#   # start ssh-agent and write environ variables to file
#   echo "starting ssh-agent..."
#   ssh-agent > ~/ssh-agent-environ
#   source ~/ssh-agent-environ
#   echo "new ssh-agent has PID: $SSH_AGENT_PID"
#
#   # add ssh-key
#   echo "adding ssh-key..."
#   eval "$(ssh-add)"
# else
#   # configure environment from existing file
#   echo "ssh-agent exists! configuring to terminal session..."
#   source ~/ssh-agent-environ
#
#   # add ssh-key
#   echo "adding ssh-key..."
#   eval $(ssh-add)
# fi

