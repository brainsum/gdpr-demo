#!/bin/bash

git pull
composer update drupal/gdpr --with-dependencies
cd web && ../vendor/bin/drush -y updb && ../vendor/bin/drush -y pmu gdpr gdpr_dump && ../vendor/bin/drush -y en gdpr 
