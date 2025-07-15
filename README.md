# Ansible Role: unattended_upgrades

This role installs and configures unattended upgrades

## Requirements

None :)

## Role Variables

| Variable    | Default value | Valid options |
| ----------- | ------------- | ------------- |
| unattended_upgrades_allowed_origins | Se below | A list of allowed origins |
| unattended_upgrades_origin_patterns | `[]` | A list of origins |
| unattended_upgrade_blacklist        | `[]`       | A list of packages   |
| unattended_upgrades_reboot          | `false`       | `false`, `true`        |
| unattended_upgrade_reboot_time      | `"03:00"`       | A valid timestamp   |
|unattended_upgrade_reboot_with_users | `true` | `false`, `true` |
| unattended_upgrades_mail_to         | `""`       | A valid email   |
| unattended_upgrades_mail_report     | `on-change` |  `always`,  `only-on-error`,  `on-change`
| unattended_upgrades_remove_unused_kernel_packages | `true` | `false`, `true` |
| unattended_upgrades_remove_new_unused_deps | `true` | `false`, `true` |
| unattended_upgrades_remove_unused_deps | `false` | `false`, `true` |
| unattended_upgrades_autofix_interuppted_dpkg | `true` | `false`, `true` |
| unattended_upgrades_allow_donwgrades | `false` | `false`, `true` |
| unattended_upgrades_allow_apt_mark_fallback | `true` | `false`, `true` |
| unattended_upgrades_dev_release     | `auto` | `true`, `false`, `auto` |
| unattended_upgrades_minimal_steps   | `true` | `false`, `true` |
| unattended_upgrades_install_on_shutdown | `false` | `false`, `true` |
| unattended_upgrades_only_on_ac_power | `true` | `false`, `true` |
| unattended_upgrades_skip_on_metered_connection | `true` | `false`, `true` |
| unattended_upgrades_syslog_enabled  | `false` | `false`, `true` |
| unattended_upgrades_syslog_facility | `daemon` | -- |
| unattended_upgrades_verbose         | `false` | `false`, `true` |
| unattended_upgrades_debug           | `false` | `false`, `true` |
| unattended_upgrades_dl_limit        | `""` | An int (indicating kb/s) |


### unattended_upgrades_allowed_origins

> **Note:** using booth `unattended_upgrades_allowed_origins` and `unattended_upgrades_origin_patterns` at the same time might result in unwanted behaviour.

Default value:
```yaml
unattended_upgrades_allowed_origins:
 - ${distro_id}:${distro_codename}
 - ${distro_id} ${distro_codename}-security
```

## Example Playbook

```yaml
- hosts: all
  roles:
    - huxcrux.unattended_upgrades
```
