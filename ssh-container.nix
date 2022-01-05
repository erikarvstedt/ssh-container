{
  containers.ssh-server = {
    extra.addressPrefix = "10.100.0";
    config = { pkgs, config, lib, ... }: {
      documentation.enable = false;
      services.openssh.enable = true;
      users.users.root.openssh.authorizedKeys.keyFiles = [ ./key.pub ];
    };
  };
}
