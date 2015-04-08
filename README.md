#My Middleman Boilerplate
---

A simple [Middleman](//github.com/middleman/middleman) boilerplate I often use for
developing static sites.

---

##What's in the box?

The following are included:

* [Skeleton Responsive Boilerplate](//github.com/dhg/Skeleton)
* [Middleman Minify HTML](//github.com/middleman/middleman-minify-html)
* [Middleman Deploy](//github.com/middleman-contrib/middleman-deploy)


On top of the following which [Middleman](//github.com/middleman/middleman) includes by default:

* [Middleman LiveReload](//github.com/middleman/middleman-livereload)
* [Windows Directory Monitor](//github.com/Maher4Ever/wdm) (only loaded on Windows -_-)
* [Time Zone Data](//github.com/tzinfo/tzinfo-data) (only loaded on Windows -_-)

The `config.rb` is setup for use with [HAML](//github.com/haml/haml) and [SCSS](//github.com/sass/sass).

---

##How to use

Switch out `YOUR_PROJECT_NAME` with, well, your project's name.

1. Clone repo - `git clone git@github.com:walshie4/My_Middleman_Boilerplate.git YOUR_PROJECT_NAME`

2. `cd` into repo - `cd YOUR_PROJECT_NAME/`

3. Delete boilerplate git repo - `rm -rf ./.git/`

4. Initialize new git repo - `git init`

5. Make initial commit - `git add --all; git commit -m "init"`

6. Start Middleman - `make run` or `make test`

7. Open a web browser to `//localhost:4567/` and start editing (page will live update thanks to the
live-reload plugin).
