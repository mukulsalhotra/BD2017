## Challenges Setup
### Part 2
##### Configure Cloudera Manager:

`scm_prepare_database.sh`


```
sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql rman rman rman_password
sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql hmon hmon hmon_password
sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql hive hive hive_password
sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql nav nav nav_password
sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql hue hue hue_password
sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql sentry sentry sentry_password
sudo /usr/share/cmf/schema/scm_prepare_database.sh mysql scm scm scm_password
```
