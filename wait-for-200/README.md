# Wait for 200 for GitHub Actions

Wait till the host is up.

This action will simply check that a URL is returning a `200` HTTP status code
before completing. You have the option to set how many seconds between checks
and how many tries before it exits in failure.

## Usage

To use the action simply add the following lines to your `.github/main.workflow`

```
action "Wait for 200" {
  uses = "maddox/actions/wait-for-200@master"
}
```

### Required Environment Variables

You'll need to provide some environment variables to specify exactly how you
want the action to work.

* **URL**: The URL you want to poll. ie, `https://domain.com`.
* **SECONDS_BETWEEN_CHECKS**: How many seconds you want to wait between checking if the URL returns a `200` HTTP status code. ie, `2`.
* **MAX_TRIES**: The number of tries before failing. ie, `20`.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
