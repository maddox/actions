# Sleep for GitHub Actions

Sometimes you just need to stall a little.

This action will simply call `sleep` for N seconds in case you need a little
padding in your workflow.

<img width="300" alt="image" src="https://user-images.githubusercontent.com/260/47250532-ac3b9d80-d3f0-11e8-88af-9215c626da22.png">

## Usage

To use the action simply add the following lines to your `.github/main.workflow`

```
action "Sleep" {
  uses = "maddox/actions/sleep@master"
  args = "15"
}
```

### Required Arguments

The only argument used or required is the number of seconds you want to sleep for.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
