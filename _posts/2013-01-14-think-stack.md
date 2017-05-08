---
author: admin
comments: true
date: 2013-01-14 07:47:52+00:00
layout: post
slug: think-stack
title: Think Stack
categories:
- think.stack
---

The problem with Wordpress as a content management system is that for the most
part, my content does not live inside Wordpress. I write using LaTeX or Google
Docs, brainstorm using virtual
[notecards](http://www.mindola.com/supernotecard/), and send myself notes by
email. Trying to back everything up is a nightmare. Thinking of ways to
streamline the workflow is the kind of stuff that keeps me up at night,
literally.

In a perfect world all those things--disparate streams of content--would live
in the same ecosystem, and flow into the same backup reservoirs.

After much experimentation, my think stack ("personal information
architecture" sounds a bit too lofty) is as follows. All content lives on a
locally mounted Google Drive. Locally authored docs get synced to the cloud,
while documents written in the cloud (using Google Docs) are synced locally.
The result: two copies of everything without much effort.

This solution is good, but it has two problems. One, it is susceptible to
account vulnerabilities. If someone hacks my password (unlikely with two-step
[verification](http://support.google.com/accounts/bin/answer.py?hl=en&answer=180744))
or, worse yet, Google accidentally
[deletes](http://support.google.com/mail/bin/answer.py?hl=en&answer=1212172)
or [locks](http://support.google.com/mail/bin/answer.py?hl=en&answer=43692) my
account, I am screwed. 

The second problem, is that native Google Docs are not really files in the
conventional sense when mounted locally, but merely links to their online
selves. To bypass that problem, you must enable [offline
access](http://support.google.com/drive/bin/answer.py?hl=en&answer=2375012).
But even then, the file content does not live on the local mount of Google
Drive itself, but is instead stored in JSON format in Chrome cache. Phew. In
other words, backing it up would be of limited use.

Enter online backup services like [Backupify](https://www.backupify.com/) or
[Spanning](http://spanning.com/backup/pricing/). For about 35$ per year,
either will back up your Google Drive (cloud to cloud) along with your Gmail
and Calendar. It is still scary to be so beholden to Google as the good-guy
gatekeeper of the my mental environment, but at least now the loop is closed.
My drive is synced to two different cloud carriers, making for three copies
total.

I have not yet had the reason to muck about with restoring lost files under
this regime, but at some point you just have to say a few hail marys under
your breath (even as a confirmed atheist).

In summary, if you want to duplicate the above: mount Google Drive locally,
enable offline access, move your default document folders inside, and cough up
a few bucks per month for tertiary insurance in case Google goes evil.
