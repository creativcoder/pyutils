How do I organize my modules (source files)? (Archive)

The first line of each file shoud be #!/usr/bin/env python.
This makes it possible to run the file as a script invoking
the interpreter implicitly, e.g. in a CGI context.

Next should be the docstring with a description.
If the description is long, the first line should be a short summary that makes
sense on its own, separated from the rest by a newline.

All code, including import statements, should follow the docstring.
Otherwise, the docstring will not be recognized
by the interpreter, and you will not have access to it in
interactive sessions (i.e. through obj.__doc__) or when generating
documentation with automated tools.

Import built-in modules first, followed by third-party modules,
followed by any changes to the path and your own modules.
Especially, additions to the path and names of your modules are likely to
change rapidly: keeping them in one place makes them easier to find.

Next should be authorship information. This information should follow this format:

__author__ = "Rob Knight, Gavin Huttley, and Peter Maxwell"
__copyright__ = "Copyright 2007, The Cogent Project"
__credits__ = ["Rob Knight", "Peter Maxwell", "Gavin Huttley",
                    "Matthew Wakefield"]
__license__ = "GPL"
__version__ = "1.0.1"
__maintainer__ = "Rob Knight"
__email__ = "rob@spot.colorado.edu"
__status__ = "Production"

Status should typically be one of "Prototype", "Development", or "Production".
__maintainer__ should be the person who will fix bugs and make improvements
if imported. __credits__ differs from __author__ in that __credits__ includes
people who reported bug fixes, made suggestions, etc. but did not actually write the code.
