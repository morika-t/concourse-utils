#!/bin/bash
set -e

DIR=$1
if [ "$DIR" = ""  ];then
    DIR=.
fi

POM=$DIR/pom.xml

echo "Add distribution-management in $POM"

sed -i -e "s@</project>@<distributionManagement><repository><id>private-releases</id><url>http://nexus.ik.am:8081/repository/maven-releases/</url></repository><snapshotRepository><id>private-snapshots</id><url>http://nexus.ik.am:8081/repository/maven-snapshots/</url></snapshotRepository></distributionManagement></project>@" $POM