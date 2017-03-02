# EWG-Theme: "ewg-theme-wordpress"
This theme adds support for bower, sass, coffee script, browser-sync and other generators to yout wordpress installation

###### Supports:
  * css styling with [sass](http://sass-lang.com/documentation/file.SASS_REFERENCE.html) and pre build helpers
  * javascript development with [coffee](http://coffeescript.org/)
  * html templating with a hacked [haml-coffee](https://github.com/easy-website-generator/haml-coffee)
  * custom and predefined haml helpers via nodeJs modules

###### Uses:
  * [nodejs](https://nodejs.org/en/)
  * [gulp](https://github.com/gulpjs/gulp)
  * [browser-sync](https://browsersync.io/)
  * [Easy-Website-Generator](https://github.com/easy-website-generator/)


### Installation
First you need to install [nodeJs](https://nodejs.org/en/download/)

```

npm install -g easy-website-generator coffee-script gulp

mkdir my-workspace

cd my-workspace

ewg init --theme wordpress

ewg serve

```
After running ``ewg serve`` the ewg will compile the html pages and opens a browser. On every source change the browser will reload.

### Configuration

Configuration expects wordpress files inside a `code` folder and defaults to theme `twentysixteen`. This can be changed by editing the ewg-config.yml. To adjust specific generators (only coffee, sass and bower are enabled by default) edit their config files inside the `ewg/generators` folder.

Dont forget to edit the bower.rc file, if you want to use bower commands from the root of your project.

### Ressources
> "[Easy-Website-Generator](https://github.com/easy-website-generator/)"

> "[Creative-Workflow](http://www.creative-workflow.berlin/company.html)"
