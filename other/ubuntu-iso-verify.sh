#!/bin/bash
gpg --verify MD5SUMS.gpg MD5SUMS
gpg --verify SHA1SUMS.gpg SHA1SUMS
gpg --verify SHA256SUMS.gpg SHA256SUMS
md5sum -c MD5SUMS
sha1sum -c SHA1SUMS
sha256sum -c SHA256SUMS
