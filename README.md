## README

This project allows to access Equifax STAR test data programatically, via a simple RESTFull + JSON API.

The test data is seeded from a CSV file (under data folder) into the database, and two routes allows access to the data programatically. The /profiles route allows a number of different queries the database (using Ransack predicates), while the /profiles/:reference route allows accessing one specific profile.

#### GET /profiles

Example queries:
```
/profiles?q[reference_eq]=P160167668166
/profiles?q[delinquent_30_days_gteq]=3&q[state_eq]=TX
```

See Ransack predicates here:
https://github.com/activerecord-hackery/ransack/wiki/basic-searching

#### GET /profiles/:reference

Example:
```
/profiles/P160167668166
```
