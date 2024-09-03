#!/bin/bash
# packages = audit

{{{ setup_auditctl_environment() }}}

rm -f /etc/audit/rules.d/*

# cut out irrelevant rules for this test
sed '8,15d' test_audit.rules > /etc/audit/audit.rules
{{% if 'ol' in product or 'rhel' in product %}}
sed -i 's/-k modules/-F auid>={{{ uid_min }}} -F auid!=unset -k modules/g' /etc/audit/audit.rules
{{% endif %}}
