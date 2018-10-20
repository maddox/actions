# Sleep for GitHub Actions

Sometimes you just need to stall a little.

This action will simply call `sleep` for N seconds in case you need a little
padding in your workflow.

To use the action simply add the following lines to your `.github/main.workflow`

```
action "Sleep" {
  uses = "maddox/actions/sleep"
  args = "15"
}
```

## Required Arguments

The only argument used or required is the number of seconds you want to sleep for.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
