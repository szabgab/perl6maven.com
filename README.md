###Status
[![Build Status](https://travis-ci.org/szabgab/perl6maven.com.png)](https://travis-ci.org/szabgab/perl6maven.com)

These are the source files of the Perl 6 Maven site http://perl6maven.com/

The code behind the website can be found in https://github.com/szabgab/Perl6-Maven



Pages
-------

Each article has a file in the pages/ subdirectory with .txt extension

The header of each file has the following attributes:

    =title     The title of the article
    =timestamp 2012-07-04T16:52:02        (when the article is published, used for the /archive page, the /atom feed and the / front page)
    =author    szabgab                    (a key in the authors.txt file)
    =keywords  a,b,c                      (comma separated list)
    =status    show                       (draft or show)

Optional fields:

    =archive 1
    =comments 1

=archive 1                         (boolean should the page be included in the /archive /atom and / front page?)
=comments 1                        (boolean should commenting be enabled on that page?)


    =perl5url
    =perl5title

=perl5url a-URL-to-perlmaven-site
=perl5title Title to be used


To include an external file add:

   <include file="tutorial/files/warn.p6" />


Today most of the people who are searching for a solution in perl are actually looking for something Perl 5 releted.
These keywords are used to add a link to the page pointing to the related article on the Perl Maven site covering Perl 5.


Tutorial
---------

The source of the tutorial is in the pages/tutorial/  subdirectory.
The pages.yml file contains the hierarchy of the pages.

