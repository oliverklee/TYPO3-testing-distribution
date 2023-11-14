# TYPO3 CMS distribution for testing my extensions

** TODO
Labels anlegen für Templates für Roomaction

** ENDE

This is a TYPO3 distribution which I use to manually test my extensions:

- [crowdfunding](https://github.com/oliverklee/ext-crowdfunding)
  (once it supports TYPO3 12LTS)
- [csv_to_openimmo](https://github.com/oliverklee/ext-csv_to_openimmo)
  (once it supports TYPO3 12LTS)
- [feuserextrafields](https://github.com/oliverklee/ext-feuserextrafields)
  (once it supports TYPO3 12LTS)
- [oelib](https://github.com/oliverklee/ext-oelib)
  (once it supports TYPO3 12LTS)
- [onetimeaccount](https://github.com/oliverklee/ext-onetimeaccount)
  (once it supports TYPO3 12LTS)
- [realty](https://github.com/oliverklee/ext-realty)
  (once it supports TYPO3 12LTS)
- [seminars](https://github.com/oliverklee/ext-seminars)
  (once it supports TYPO3 12LTS)
- [tea](https://github.com/TYPO3-Documentation/tea)

## Usage

This distribution uses [ddev](https://github.com/drud/ddev).

### Initializing the project

```bash
ddev start
ddev composer install
ddev install-typo3
```

### Database dump and import

There are two commands available for dumping the database and for importing the
dump to and from the file `dump.sql`:

```bash
ddev db-dump
ddev db-import
```

The dump includes (and hence overwrite on import) FE users and FE user groups,
but not BE users or BE user groups. (So it is safe to add BE users and then
run the import.)

### Developing and testing extensions

To test a local copy of an extension in this distribution, you can do one of
the following (or a combination):

1. Put the extension folders in `src/extensions/`.
2. Mount the extension directories via Docker. For this, create the file
   `.ddev/docker-compose.packages.yaml` as a copy of
   `.ddev/docker-compose.packages.yaml.template` and modify it to your needs.

### Configuring PHPUnit

The DDEVd documentation provides very good
[step-by-step instructions for the Docker setup in PhpStorm](https://ddev.readthedocs.io/en/stable/users/topics/phpstorm/).

After that, you need to configure the PhpStorm templates for PHPUnit tests:

- Configuration file: `config/UnitTests.xml`
- Environment variables:
  `typo3DatabaseUsername=root;typo3DatabaseHost=db;TYPO3_PATH_WEB=public/;typo3DatabaseName=typo3_test;typo3DatabasePassword=root`

Also, `config/UnitTests.xml` is the configuration file for unit tests,
while `config/FunctionalTests.xml` is the corresponding file for functional
tests.

## Relevant URLs and launch options

- Backend:
  - `ddev launch typo3`
- Frontend (DE):
  - `ddev launch`
- Frontend (EN): https://typo3-testing-10-4-en.ddev.site:8081/
- MailHog:
  - `ddev launch -m`

## Credentials

Backend admin: `admin` / `Password1!`<br/>
Install tool password: `Password1!`

Frontend users:
- `attendee` / `attendee`
- `editor` / `editor`
- `manager` / `manager`
- `admin` / `password` (with all three of the above roles combined)
