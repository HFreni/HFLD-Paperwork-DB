<p align="center">
  <img src=https://www.github.com/hfreni/HFLD-Paperwork-DB/raw/master/documentation/img/HFLD_PMP@4x.png/>
</p>


# README

In order to get started with this paperwork management portal, you must do a few things, they're listed below.

## DB Setup

Since we're using ENV variables to store our ```postgresql``` database connection info, you're going to have to export a few things:

```bash
export DBHOST="DBHOST"
export DBUSERNAME="USERNAME"
export DBPASSWORD="PASSWORD"
```

Next, let's run our standard db migration & creation.

To get up & running, use:
```bash
rake db:create db:migrate
```

If you don't mind losing data, and want to drop the tables, please run:

```bash
rake db:drop db:create db:migrate
```

In order to populate the gel colors table from the included CSV file (which contains HEX codes for 4 of the largest lighting gel manufacturers: Apollo, GAM, Rosco, and Lee), run this command:

```bash
rake db:seed
```
