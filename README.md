# Hakaru

Hakaru is a DSL for constructing and subsequently sampling probability distributions.

It seems to have taken the direction of being a standalone programming language: [https://github.com/hakaru-dev/hakaru](https://github.com/hakaru-dev/hakaru).

I patched the old version up for use with GHC-8 because I wanted a simple interface to working
with sampling and constructing distributions. One major drawback is that it runs in IO, but this
hopefully should be easy to refactor into ST or even better just pure parallel Haskell. I'm 
probably not going to look at rewriting it for a bit so if somebody wants to fork it or push that
here, by all means do!
