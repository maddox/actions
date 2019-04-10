# GitHub Actions

Fun with robots.

This is a collection of [GitHub Actions](https://github.com/features/actions) that I thought might be useful to others.
There aren't many for now, but any general actions I create will get stored here.

## [Home Assistant Command](home-assistant)

This action allows you to make a service call to your Home Assistant instance.
Blink a light when a deploy is done, set your lights to green when CI goes green,
lock your front door until the deploy is complete.

Of course you want to incorporate your smart devices into your GitHub workflow!

<img width="303" alt="image" src="https://user-images.githubusercontent.com/260/47250759-603f2780-d3f5-11e8-9305-e65723aaee6c.png">


```
action "Flash office lights" {
  uses = "maddox/actions/home-assistant@master"
  secrets = ["HASS_HOST", "HASS_TOKEN"]
  env = {
    SERVICE_DATA = "{\n  \"entity_id\": \"light.office\",\n  \"flash\": \"short\"\n}"
    DOMAIN = "light"
    SERVICE = "turn_on"
  }
}
```

# [SSH](ssh)

This action will run the provided argument as a command on your $HOST via SSH.

<img width="303" alt="image" src="https://user-images.githubusercontent.com/260/47310459-3eb48a80-d605-11e8-867f-702182404b51.png">

```
action "Run deploy script" {
  uses = "maddox/actions/ssh@master"
  args = "/opt/deploy/run"
  secrets = [
    "PRIVATE_KEY",
    "PUBLIC_KEY",
    "HOST",
    "USER"
  ]
}
```

## [Sleep](sleep)

This action will simply call `sleep` for N seconds in case you need a little
padding in your workflow.

<img width="300" alt="image" src="https://user-images.githubusercontent.com/260/47250532-ac3b9d80-d3f0-11e8-88af-9215c626da22.png">

```
action "Sleep" {
  uses = "maddox/actions/sleep@master"
  args = "15"
}
```

## [Wait for 200](wait-for-200)

This action will simply check that a URL is returning a `200` HTTP status code
before completing. You have the option to set how many seconds between checks
and how many tries before it exits in failure.

<img width="301" alt="image" src="https://user-images.githubusercontent.com/260/47251250-fd9f5900-d3ff-11e8-9a4f-d15343e9c3a3.png">

```
action "Wait for 200" {
  uses = "maddox/actions/wait-for-200@master"
  env = {
    URL = "https://mysite.com"
    SECONDS_BETWEEN_CHECKS = "2"
    MAX_TRIES = "20"
  }
}
```

# [Pushover Notifications](pushover)

This action allows you to send yourself a push notification via [Pushover.net](https://Pushover.net).

<img width="301" alt="Screen Shot 2019-04-10 at 2 13 27 AM" src="https://user-images.githubusercontent.com/260/55855724-483f9980-5b36-11e9-8765-c85593edbeef.png">

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

## License

[MIT](LICENSE). Please see additional information in each subdirectory.
