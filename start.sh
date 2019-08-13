#!/bin/bash

git config --global user.name `java -jar /crypto.jar decript $privateKey $gitName`;
git config --global user.email `java -jar /crypto.jar decript $privateKey $gitEmail`;
