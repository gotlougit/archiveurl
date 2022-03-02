# Archive URLs

## Overview

This is just a small little script I whipped up to archive hyperlinks found in HTML pages using standard Linux utilities.

It's not 100% perfect; I suspect more work will be needed on regex used, but it seems to work fine.

The script can be a tad slow as I have configured it to sleep every 2 seconds after making a request to the Internet Archive. You can remove this if you want, but I'd much rather not send too many requests there and use up their valuable bandwidth.

## Usage

Just run archiveurl.sh

It needs curl installed.

## License

I hereby release this code into the Public Domain, so that it may be used as freely as possible, and that more content is archived for future generations. May not a single bit be lost to the void.
