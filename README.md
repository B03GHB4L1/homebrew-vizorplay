# VizorPlay for Homebrew

This tap installs VizorPlay's shared match-clipping and analysis app on macOS.
The package keeps the name `clipmaker` for compatibility; launch it with
`vizorplay`.

Install:

```sh
brew tap B03GHB4L1/clipmaker
brew install B03GHB4L1/clipmaker/clipmaker
vizorplay
```

The app opens in your default browser. The first launch prepares a private
Python environment and downloads dependencies and the scraper browser. It needs
internet access and may take several minutes. Keep the terminal open while
using the app; press Control-C there when finished.

Update after closing VizorPlay:

```sh
brew update
brew upgrade clipmaker
vizorplay
```

Projects are saved locally, independently of the Homebrew package. Referenced
videos must stay in place. Back up the project data and external videos before
moving to another computer.

This is a source launcher with a browser interface. It does not install an
unsigned macOS app bundle, disable Gatekeeper, or guarantee that every security
warning disappears. No Apple Developer membership is required for this route.

Source and support: [VizorPlay](https://github.com/B03GHB4L1/ClipMaker).
