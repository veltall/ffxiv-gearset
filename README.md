# FFXIV Gearset

A personal tool for customization of gearsets in the MMORPG Final Fantasy XIV, built with various web technologies.

<img src="https://www.shareicon.net/data/128x128/2015/10/06/112725_development_512x512.png" width="100" />

See [nodeJS home page](https://nodejs.org/en/) for further information.

##
###

<img src="https://upload.wikimedia.org/wikipedia/commons/3/3f/Electron_0.36.4_Icon.png" width="100" />

[Electron](https://electron.atom.io/) wraps NodeJS and Chromium technologies into one package to allow for seamless desktop application development using web technologies.

##
###

<img src="http://sebastianmetzger.com/wp-content/uploads/2014/08/p-logo.png" width="100" />

[Polymer](https://www.polymer-project.org/2.0/start/) is Google's attempt at building web components (plug-and-play building blocks of the web). It helps new developers create visually and functionally sane web applications without deviating too far from general high-level ideas.

---

## How to Start

The application is run in a Chromium window controlled by Electron's main process. It retrieves content served from a nodeJS server hosted at [localhost:8081](localhost:8081) by Polymer.

### Install dependencies
- [NodeJS and npm](https://nodejs.org/en/)
- bower: `npm install -g bower`
- Polymer-cli: `npm install -g polymer-cli`
- Electron: `cd ./ffxiv-gearset && npm install`  
Verify that the `package.json` lists Electron as a dependency and uses Electron as the `npm start` script.

`./ffxiv-gearset/package.json`
```json
{
  ...
  "devDependencies": {
    "electron": "~1.6.2",
    ...
  },
  "scripts": {
    "start": "electron .",
    ...
  }
}
```

### Run the server and load the app
- Serve the Polymer app on localhost: `~/.../ffxiv-gearset $ polymer serve`
- [Optional] Match the URL that Polymer returns as the host location for the server with the URL that Electron loads in `./ffxiv-gearset/main.js`  
    ```javascript
    mainWindow.loadURL("http://localhost:8081/")
    ```
- Run the application: `npm start`