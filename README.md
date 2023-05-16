# Ansible Role: unattended_upgrades

This role installs and configures unattended upgrades

## Requirements

None :)

## Role Variables

| Variable    | Default value | Valid options |
| ----------- | ------------- | ------------- |
| unattended_upgrades_reboot      | `"false"`       | `"false"`, `"true"`        |
| unattended_upgrade_reboot_time      | `"03:00"`       | A valid timestamp   |
| unattended_upgrade_blacklist      | `[]`       | A list of packages   |
| unattended_upgrades_mail_to     | `""`       | A valid email   |
| unattended_upgrades_mail_report | `on-change` |  `always`,  `only-on-error`,  `on-change`
| unattended_upgrades_dev_release | `auto` | `true`, `false`, `auto` |

### unattended_upgrades_allowed_origins

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
    - bl0m1.unattended_upgrades
```

## License

MIT / BSD
