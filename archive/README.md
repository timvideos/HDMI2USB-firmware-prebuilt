These are the prebuilt output for the [HDMI2USB misoc firmware](https://github.com/timvideos/HDMI2USB-misoc-firmware).

Most of these builds are created via Travis builds.

The structure is;
```bash
archive/$(git describe)/$TARGET/$BOARD/
```

Example;

 * `archive/v0.0.0-152-ge2b8b92/base/atlys/`
 * `archive/v0.0.0-152-ge2b8b92/base/opsis/`
 * `archive/v0.0.0-152-ge2b8b92/hdmi2usb/atlys/`
 * `archive/v0.0.0-152-ge2b8b92/hdmi2ethernet/opsis/`

These directories are symlinked as stable/testing/unstable from other
directories.
