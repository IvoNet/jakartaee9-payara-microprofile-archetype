# JakartaEE 9 Quick starter archetype

A quickstart maven archetype for creating greenfield JakartaEE 8 projects
working with Payara 5 and MicroProfile 4

You can find the archetype on [maven central](http://ivo2u.nl/Vw) 

I've also written a blog about it on [IvoNet.nl](http://ivo2u.nl/oj)

# Get started

* [JavaEE / JakartaEE - Initializr](http://ivo2u.nl/oq)

## Create JakartaEE Project from mvn central repo

```bash
mvn archetype:generate \
    -DarchetypeGroupId=nl.ivonet \
    -DarchetypeArtifactId=jakartaee9-payara-microprofile-archetype \
    -DarchetypeVersion=2.0 -U
```

## Install in local repo

```bash
mvn dependency:get \
   -DgroupId=nl.ivonet \
   -DartifactId=jakartaee9-payara-microprofile-archetype \
   -Dversion=2.0
   
mvn archetype:crawl
```

## Run if offline available

```bash
mvn archetype:generate -Dfilter=nl.ivonet:
```

this will filter the archetype list on my groupId

## Create your own project in batch mode

```bash
mvn archetype:generate                                            \
   -DarchetypeGroupId=nl.ivonet                                   \
   -DarchetypeArtifactId=jakartaee9-payara-microprofile-archetype \
   -DarchetypeVersion=2.0                                         \
   -DgroupId=[GROUP ID]                                           \
   -DartifactId=[PROJECT_NAME]                                    \
   -Ddocker-hub-name=[YOUR_DOCKER_HUB_NAME]                       \
   -Dversion=1.0-SNAPSHOT                                         \
   -Darchetype.interactive=false                                  \
   --batch-mode
```
e.g.

```bash
mvn archetype:generate                                            \
   -DarchetypeGroupId=nl.ivonet                                   \
   -DarchetypeArtifactId=jakartaee9-payara-microprofile-archetype \
   -DarchetypeVersion=2.0                                         \
   -DgroupId=nl.ivonet                                            \
   -DartifactId=helloworld                                        \
   -Ddocker-hub-name=ivonet                                       \
   -Dversion=1.0                                                  \
   -Darchetype.interactive=false                                  \
   --batch-mode
```


# Maven repo

* [Maven repo](https://repo.maven.apache.org/maven2/nl/ivonet/jakartaee9-payara-microprofile-archetype/)

# Contact

Twitter: @ivonet
Blog   : https://www.ivonet.nl
