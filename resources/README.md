# App Icons

Source assets for the Android (and iOS) launcher icons.

- `icon.png` — 1024×1024 full app icon (used for legacy/iOS).
- `icon-foreground.png` — 1024×1024 adaptive-icon foreground, art kept inside the safe inner ~60%.
- `icon-background.png` — 1024×1024 adaptive-icon background (soft blue→mint gradient).

## Generate Android (and iOS) icons

After you've cloned the repo locally and run `npx cap add android`, generate
all required icon densities + the adaptive icon XML automatically:

```bash
npm install --save-dev @capacitor/assets
npx capacitor-assets generate --android
```

This will populate:

- `android/app/src/main/res/mipmap-*/ic_launcher.png`
- `android/app/src/main/res/mipmap-*/ic_launcher_round.png`
- `android/app/src/main/res/mipmap-anydpi-v26/ic_launcher.xml` (adaptive)
- `android/app/src/main/res/mipmap-anydpi-v26/ic_launcher_round.xml`
- `android/app/src/main/res/drawable/ic_launcher_foreground.png`
- `android/app/src/main/res/values/ic_launcher_background.xml`

Then:

```bash
npx cap sync android
npx cap open android
```

Re-run `npx capacitor-assets generate --android` any time you change the
source PNGs in this folder.