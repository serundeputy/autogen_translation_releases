Get Translation Files for Backdrop CMS Periodically
===================================================

Some scripts to get latest Backdrop, extract translatable strings with `potx`, and upload them to the Backdrop localization server.

Scripts
-------

* `getPoFilesOnDaReg.sh`
  * Bash script to get and install Backdrop and potx module.

* `enPotx.php`
  * PHP helper script to enable the `potx` module.

* `cleanUp.sh`
  * Remove the temporary files.

TODO
----

* get bakdrop version dynamically and use that version to generate the *.po files.
* popuplate D7 `/admin/l10n_server/projects/releases/backdropcms` form
  * php script it and run w/ `drush scr uploadPoFile.php`
* make
  - scripts
    - bash
    - php
  directories?
