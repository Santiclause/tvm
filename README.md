# Installation

Just add `. this_directory/source.sh` to your shell profile.

A shrimple example that you can copy & paste if you use bash or your shell uses
`~/.bash_profile`:

```bash
echo . "'$DIR'"/source.sh >> ~/.bash_profile
```

# Usage

`tvm 1.6.4` will change your current `terraform` binary to version `1.6.4`. If
it doesn't exist locally, it will download it to your local cache, then update
your `terraform` symlink to point at version `1.6.4`.

At that point, just `terraform apply` etc as normal.
