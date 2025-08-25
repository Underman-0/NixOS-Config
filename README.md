```
.
├── flake.nix
├── hosts/                    # Host-specific configurations
│   └── T470.nix
├── modules/                  # Shared system modules
│   ├── system-packages.nix
├── users/                    # User-specific configurations
│   └── underman/
│       ├── configuration.nix
│       ├── home/             # Home Manager
│       │   ├── default.nix
│       │   ├── packages.nix
│       │   └── Programs/     # Program configurations
└── README.md
```

- figure out ssh key syncing
- should configuration.nix have user packages?
- where should I configure system stuff (bootloader)?
- 