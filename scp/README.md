# SCP for GitHub Actions

Copy a thing on your server.

This action will copy the provided file to your $HOST via SCP.

## Usage

To use the action simply add the following lines to your `.github/main.workflow`

```
action "Copy build artifact" {
  uses = "maddox/actions/scp@master"
  args = "./your-file"
  secrets = [
    "PRIVATE_KEY",
    "HOST",
    "USER",
    "TARGET"
  ]
}
```

### Required Arguments

The argument you will use is the file that will be copied to your server via SCP.

#### Examples

* ```args = "./dist.tar"```
* ```args = "/var/build/output.zip"```

### Required Secrets

You'll need to provide some secrets to use the action.

* **PRIVATE_KEY**: Your SSH private key.
* **HOST**: The host the action will SCP to to copy the file. ie, `your.site.com`.
* **USER**: The user the SCP command will auth as with the private key.
* **TARGET**: The path to the target directory on the host.

### Optional Secrets

* **PORT**: The port SSH is listening on. Default: `22`

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
