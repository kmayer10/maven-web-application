#!/bin/bash

cd udclient
./udclient -username admin -password admin -weburl https://84.39.32.105:8443 createVersion -component GIT -name TRAVIS_${TRAVIS_BUILD_NUMBER}
mkdir ../basedir
cp ../target/*.war ../basedir
./udclient -username admin -password admin -weburl https://84.39.32.105:8443 addVersionFiles -component GIT -version TRAVIS_${TRAVIS_BUILD_NUMBER} -base ../basedir
