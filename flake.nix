{
  inputs.secrets.url = "path:./secrets";
  inputs.secrets.flake = false;

  description = "A very basic flake";

  outputs = { self, secrets }: {
    secret = builtins.fromJSON (builtins.readFile "${secrets}/secret.json");
  };
}
