# A JBake project for the Java EE tutorial

## About JBake

JBake is a static site generator, it's inspired from jekyll and written in java.
The basic idea is to have templates for the structure of the page, and the body generated from asciidoc content.

## Pre requisites

- Maven
- JDK8+

Deploying to Github will require password less authentication.
This is done by exporting your SSH public key into your Github account.

## Create an empty gh-pages branch

```
git checkout --orphan gh-pages
git rm -rf .
touch empty_file
git add empty_file
git commit -m "add empy_file"
git push origin gh-pages
```

## Update site.url in pom.xml

The pom.xml file references the Github repo URL.
Update distributionManagement.site.url to point at your repository.

## Build the site locally

```
mvn generate-resources
```

Or you can invoke the JBake plugin directly.

```
mvn jbake:build
```

### Rebuild the site on changes

```
mvn jbake:watch
```

If you keep this command running, changes to the sources will be detected and the site will be rendered incrementally.
This is convenient when writing content.

### Serve the site locally

```
mvn jbake:serve
```

If a webserver is required (e.g. absolute path are used), this command will start a webserver (jetty) for you.
It can also watch for changes and rebuild incrementally.

## Deploy the site to Github Pages

```
mvn site-deploy
```

## Links

- [JBake maven plugin documentation](https://github.com/Blazebit/jbake-maven-plugin)
- [JBake documentation](http://jbake.org/docs/2.5.1)
- [Freemarker documentation](http://freemarker.org/docs)
- [Asciidoctor quick reference](http://asciidoctor.org/docs/asciidoc-syntax-quick-reference)