pl_randpass
===========

Generating random passwords using easy to guess words.

This idea was based off the XKCD comic http://xkcd.com/936/

Bear in mind that I really don't advise using this as a way for you to create passwords for your own use, as all the words are in a common place - /usr/share/dict/words - which makes it an incredibly easy source for someone wanting to brute force your password. The idea is that your password comes from *completely random* words joined together, picked from seemingly nowhere. That, and the source code to this password generator is out there, so it's easy to "reverse engineer" - i.e. look at the source code - and formulate easy plans to brute force your passwords.

If you really need a good password generator, look into KeePass. It's open source to boot, but the algorithm behind the password generation is far more cryptographic (read: secure) than this source code ever will. This, for me, was just an opportunity for me to use Perl.

I strongly suggest you don't bother using it for real world use, but only for educational use.