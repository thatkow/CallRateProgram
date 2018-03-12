#!/bin/bash

osascript -e 'tell application "Terminal" to do script "cd \"/Users/andrew/Documents/pp/callRateProgram/dependencies\";/usr/local/bin/ansible-playbook /Users/andrew/Documents/pp/callRateProgram/dependencies/Linux.yml -i \"localhost,\" -c local"'