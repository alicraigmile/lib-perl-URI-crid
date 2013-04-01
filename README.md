lib-perl-URI-crid
=================

URI scheme for crid://[namespace]/[crid] aka RFC4078

To build
--------

```shell
perl Makefile.PL
make
make test
make install
```

See it working
--------------

There's a script in examples which can be used to check everything is working as expected:

```shell
perl -Iblib ./examples/breakdown-uri.pl crid://bbc.co.uk/b1234567
```

Incidently you can pass any number or type of URIs to this script:

```shell
perl -Iblib ./examples/breakdown-uri.pl urn:system/datastore/collection/resource http://user:password@www.example.com/path/to/resource.html
```
