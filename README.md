```
.
├── flake.lock
├── flake.nix
├── hosts/                       # host specific configuration
│   └── T470.nix
├── modules/                     # free use modules
│   ├── initialize-users.nix
│   ├── shared-pkgs.nix
│   └── system.nix
├── scripts/                     # free use scripts
│   ├── battery-combined-tlp.sh
│   └── brightness-level.sh
└── users/                       # user specific configuration
    └── underman/
        ├── app-configs/         # application configurations
        ├── configuration.nix    # NixOS configuration
        └── home.nix             # home-manager configuration
```

- figure out ssh key syncing
- configure applications in nix:
  - user:
    - KDE Plasma
    - VSCodium
    - Neovim
    - Firefox
  - system:
    - Systemd boot (cool boot sequence)