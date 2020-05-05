roda-rom-evt
============

Playing around with Roda, ROM, dry-rb and eventide.

### Install gems

```bash
./install-gems.sh
```

### Setup database

```bash
createdb products
bundle exec rake db:migrate
```

### Start

```bash
bundle exec rackup
```
