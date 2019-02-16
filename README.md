Get Translation Files for Backdrop CMS Periodically
===================================================

Some scripts to get latest Backdrop, extract translatable strings with `potx`, and upload them to the Backdrop localization server.

Scripts
-------

* `getPoFilesOnDaReg.sh`
  * Bash script to get and install Backdrop and potx module.

* `enPotx.php`
  * PHP helper script to enable the `potx` module.

* `createReleaseAndUploadPo.php`
  * Creates the release on the localization server

* `cleanUp.sh`
  * Remove the temporary files.

TODO
----

* popuplate D7 `/admin/l10n_server/projects/releases/backdropcms` form
  * The form is populated and saves a release; need to parse the po file
* create env vars to store:
  * `$pathToBackdrop`
  * `$pathToLocalization`
  * Use envars in the scripts.
    * right now everything assumes Lando paths like `/app/backdrop`

Development
-----------

The repo inlcudes a `.lando.yml` file to spin up conatainers suitable for
running a Backdrop and D7 Localization server side by side.

To spin up:

```bash
lando start
```

Once the app is started you can

```bash
lando ssh
```

This will drop you into a sheel in the `appserver` where backdrop and the
localization server live. You can then fire off any of the bash or php scripts
as needed for testing.

You can use `cleanUp.sh` and `lando destroy -y` to set everyghing back to a
clean start state.

Maintainers
-----------

[Geoff St. Pierre @serundeputy](https://github.com/serundeputy)
