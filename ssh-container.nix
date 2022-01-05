{
  containers.ssh-server = {
    extra.addressPrefix = "10.100.0";
    config = { pkgs, config, lib, ... }: {
      documentation.enable = false;
      services.openssh = {
        enable = true;
        # Disable systemd socket activation
        startWhenNeeded = false;
        # Set host key
        hostKeys = lib.mkForce [];
        extraConfig = ''
          HostKey /etc/ssh/host-key
        '';
      };
      environment.etc."ssh/host-key" = {
        text = builtins.readFile ./key;
        mode = "400";
      };
      users.users.root.openssh.authorizedKeys.keyFiles = [ ./key.pub ];
    };
  };
}
