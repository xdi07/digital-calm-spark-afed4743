# App Icons

Source assets for the Android (and iOS) launcher icons.

- `icon.png` — 1024×1024 full app icon (used for legacy/iOS).
- `icon-foreground.png` — 1024×1024 adaptive-icon foreground, art kept inside the safe inner ~60%.
- `icon-background.png` — 1024×1024 adaptive-icon background (soft blue→mint gradient).

## Generate Android (and iOS) icons

After you've cloned the repo locally, generate all required icon densities +
the adaptive icon XML automatically:

```bash
npm run android:icons
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
npm run android:sync
npm run android:open
```

Re-run `npm run android:icons` any time you change the source PNGs in this folder.