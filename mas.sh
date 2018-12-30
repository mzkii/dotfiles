#!/bin/sh
mas_list=(
    1087080039 # Quick View Calendar (2.2)
    409183694 # Keynote (8.3)
    539883307 # LINE (5.12.0)
    803453959 # Slack (3.3.3)
    409201541 # Pages (7.3)
    409203825 # Numbers (5.3)
)
echo "Installing AppStore apps using mas..."
for mas in "${mas_list[@]}"; do
    mas install $mas
done
