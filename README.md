# TYPO3 CMS distribution for testing my extensions

This is a TYPO3 distribution which I use to manually test my extensions:

- [feuserextrafields](https://github.com/oliverklee/ext-feuserextrafields)
- [oelib](https://github.com/oliverklee/ext-oelib)
- [onetimeaccount](https://github.com/oliverklee/ext-onetimeaccount)
- [seminars](https://github.com/oliverklee/ext-seminars)
- [tea](https://github.com/TYPO3-Documentation/tea)
- [site package](https://github.com/oliverklee/typo3-devsite)

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
