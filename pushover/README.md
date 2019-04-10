# Pushover Notifications for GitHub Actions

Notify yourself.

This action allows you to send yourself a push notification via [Pushover.net](https://Pushover.net).

<img width="301" alt="Screen Shot 2019-04-10 at 2 13 27 AM" src="https://user-images.githubusercontent.com/260/55855724-483f9980-5b36-11e9-8765-c85593edbeef.png">

## Usage

To use the action simply add the following lines to your `.github/main.workflow`
and provide the required Secrets and Environment Variables

```
action "Notify me" {
  uses = "maddox/actions/pushover@master"
  secrets = ["APP_TOKEN", "USER_KEY"]
  env = {
    TITLE = "Build Complete"
    MESSAGE = "Your container has been built and verified."
    URL = "https://your.builddetails.com/builds/23212"
    URL_TITLE = "Build Details"
    SOUND = "magic"
    PRIORITY = "1"
  }
}
```

### Required Secrets

You'll need to provide some secrets to use the action.

* **APP_TOKEN**: The token for your app registered with Pushover.
* **USER_KEY**: Your personal user key from Pushover.

### Required Environment Variables

You'll need to provide some environment variables to specify exactly what you want to do.

* **TITLE**: The title of the notification.
* **MESSAGE**: The message of the notification.

### Optional Environment Variables

You can optionally add these to enhance your notification.

* **URL**: Add a URL that can be opened.
* **URL_TITLE**: Give the URL a title.
* **SOUND**: Play a specific sound.
* **PRIORITY**: Set the priority of the notification.

[Learn more](https://pushover.net/api) about these parameters and the available values at the Pushover API docs..


## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
