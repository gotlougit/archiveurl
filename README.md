# Archive URLs

## Overview

This is just a small little script I whipped up to archive hyperlinks found in HTML and Markdown pages using standard Linux utilities.

It's not 100% perfect; I suspect more work will be needed on regex used, but it seems to work fine.

The script can be a tad slow as I have configured it to sleep every 2 seconds after making a request to the Internet Archive. You can remove this if you want, but I'd much rather not send too many requests there and use up their valuable bandwidth.

## Usage

Just run archiveurl.sh

It needs curl installed.

The script just outputs the headers of the response gotten back from the Archive. If it's a 302 FOUND message, and it has a location header with a web.archive.org URL, most likely it's been archived. If you get any other errors, check the URL that's been requested to be archived, as the regex may not have worked correctly. If that's all right, it could also be an 429 TOO MANY REQUESTS message, which is fairly self-explanatory; just wait a little while and try again. And of course, for anything else, just create an issue

## License

I hereby release this code into the Public Domain, so that it may be used as freely as possible, and that more content is archived for future generations. May not a single bit be lost to the void.
