# TODO

* [Adduser consistency](https://github.com/hardening-io/chef-os-hardening/pull/73)
* [add support for limiting password re-use](https://github.com/hardening-io/puppet-os-hardening/pull/61)

## Specific remediation

### Foreman/build time:
control: 1.1.19, status: MANUAL, description:Ensure noexec option set on removable media partitions
control: 1.1.20, status: MANUAL, description:Ensure nodev option set on removable media partitions
control: 1.1.21, status: MANUAL, description:Ensure nosuid option set on removable media partitions
control: 3.5.1.6, status: MANUAL, description:Ensure network interfaces are assigned to appropriate zone

### TODO ansible:
control: 1.2.1, status: MANUAL, description:Ensure GPG keys are configured
control: 1.2.2, status: MANUAL, description:Ensure package manager repositories are configured
control: 1.2.4, status: MANUAL, description:Ensure Red Hat Subscription Manager connection is configured
control: 1.6.1, status: FAILED, description:Ensure core dumps are restricted
control: 2.2.2, status: EXCLUDED, description:Ensure X11 Server components are not installed
control: 2.5, status: MANUAL, description:Ensure nonessential services are removed or masked
control: 3.5.1.7, status: MANUAL, description:Ensure unnecessary services and ports are not accepted
control: 4.1.17, status: EXCLUDED, description:Ensure the audit configuration is immutable
control: 4.2.1.4, status: MANUAL, description:Ensure logging is configured
control: 4.2.4, status: MANUAL, description:Ensure logrotate is configured
control: 5.2.4, status: MANUAL, description:Ensure SSH access is limited
control: 5.4.1.5, status: MANUAL, description:Ensure all users last password change date is in the past
control: 5.5, status: MANUAL, description:Ensure root login is restricted to system console
control: 6.1.10, status: MANUAL, description:Ensure no world writable files exist
control: 6.1.11, status: MANUAL, description:Ensure no unowned files or directories exist
control: 6.1.12, status: MANUAL, description:Ensure no ungrouped files or directories exist
control: 6.1.13, status: MANUAL, description:Audit SUID executables
control: 6.1.14, status: MANUAL, description:Audit SGID executables
control: 6.2.3, status: MANUAL, description:Ensure root is the only UID 0 account
control: 6.2.4, status: MANUAL, description:Ensure root PATH Integrity
control: 6.2.6, status: MANUAL, description:Ensure users home directories permissions are 750 or more restrictive
control: 6.2.18, status: MANUAL, description:Ensure shadow group is empty

### Depends on infra:
control: 4.2.1.5, status: MANUAL, description:Ensure rsyslog is configured to send logs to a remote log host
control: 4.2.1.6, status: MANUAL, description:Ensure remote rsyslog messages are only accepted on designated log hosts.
