const { app, BrowserWindow } = require('electron')

// Paramétrage d'une fenêtre en 800x600 et qui appelle pantheon.html
function createWindow () {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true
    }
  })

  win.loadFile('html_views/pantheon.html')
}

// Quand l'appli' est prête, créer la fenêtre telle que définie au dessus
app.whenReady().then(createWindow)

// Si toutes les fenêtres sont fermées, quitter l'appli
app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') { // Exception MacOS
    app.quit()
  }
})

app.on('activate', () => {
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow()
  }
})

// Bon exemple de structure d'appli à étudier : https://github.com/electron/electron-api-demos/blob/master/docs.md