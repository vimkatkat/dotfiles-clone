# set -l commands login logout lock unlock sync generate encode config update completion status serve list get create edit delete restore move confirm import export share send receive
complete -c bw -f
complete -c bw -a login -d "Log into a user account."
complete -c bw -a logout -d "Log out of the current user account."
complete -c bw -a lock -d "Lock the vault and destroy active session keys."
complete -c bw -a unlock -d "Unlock the vault and return a new session key."
complete -c bw -a sync -d "Pull the latest vault data from server."
complete -c bw -a generate -d "Generate a password/passphrase."
complete -c bw -a encode -d "Base 64 encode stdin."
complete -c bw -a config -d "Configure CLI settings."
complete -c bw -a update -d "Check for updates."
complete -c bw -a completion -d "Generate shell completions."
complete -c bw -a status -d "Show server, last sync, user information, and vault status."
complete -c bw -a serve -d "Start a RESTful API webserver."
complete -c bw -a list -d "List an array of objects from the vault."
complete -c bw -a get -d "Get an object from the vault."
complete -c bw -a create -d "Create an object in the vault."
complete -c bw -a edit -d "Edit an object from the vault."
complete -c bw -a delete -d "Delete an object from the vault."
complete -c bw -a restore -d "Restores an object from the trash."
complete -c bw -a move -d "Move an item to an organization."
complete -c bw -a confirm -d "Confirm an object to the organization."
complete -c bw -a import -d "Import vault data from a file."
complete -c bw -a export -d "Export vault data to a CSV or JSON file."
complete -c bw -a share -d "--DEPRECATED-- Move an item to an organization."
complete -c bw -a send -d "Work with Bitwarden sends. A Send can be quickly created using this command or subcommands can be used to fine-tune the Send"
complete -c bw -a receive -d "Access a Bitwarden Send from a url"
