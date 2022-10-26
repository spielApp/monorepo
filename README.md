# Spiel chat app

## Server 1 (UI)
* Svelte
* TailwindCSS
* DaisyUI
* Socket.io Client
* Express
* npm registry api (to get plugin versions)

# Server 2 (API, Socket.io)
* Express
* Socket.io Server
* badwords lib
* UNPKG for fetching plugins

# Packages (D = Dependency, P = Page/site)
D @spiel/parser - slash command parser
D @spiel/internal - client events and functions (depends on @spiel/parser)
P @spiel/server - socket.io server @app.spiel.place|render
P @spiel/mainpage - info page @spiel.place|netlify
D @spiel/bot - official bot creation library for spiel, Do not trust any other libraries with your bot token unless approved in the following list (depends on @spiel/internal)

# approved bot creation libs
@spiel/bot

# stack
db - mongodb atlas
realtime - socket.io <-> mongoose
hosting - netlify

# color scheme
main: #16C0C0
main-dark (logo background color): #0b6060

background: slate-900
foreground: slate-50
