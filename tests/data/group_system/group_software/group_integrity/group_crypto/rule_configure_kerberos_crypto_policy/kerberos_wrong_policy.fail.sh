#!/bin/bash
# profiles = xccdf_org.ssgproject.content_profile_standard

rm -f /etc/krb5.conf.d/crypto-policies
ln -s /etc/crypto-policies/back-ends/openssh.config /etc/krb5.conf.d/crypto-policies
