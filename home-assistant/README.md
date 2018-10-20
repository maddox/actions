# GitHub Actions for Home Assistant

Control your home via Home Assistant.

This action allows you to make a service call to your Home Assistant instance.
Blink a light when a deploy is done, set your lights to green when CI goes green,
lock your front door until the deploy is complete. Of course you want to incorporate
your smart devices into your GitHub workflow!

<img width="303" alt="image" src="https://user-images.githubusercontent.com/260/47250759-603f2780-d3f5-11e8-9305-e65723aaee6c.png">

## Usage

To use the action simply add the following lines to your `.github/main.workflow`
and provide the required Secrets and Environment Variables

```
action "Flash office lights" {
  uses = "maddox/actions/home-assistant@master"
}
```

### Minimum Home Assistant Version

In order to use this action, your Home Assistant instance's version
must be > 0.78. This action uses the new user auth scheme that has been added
along with the long-lived access tokens you can generate.

Once you are on a valid version, you can create a long-lived access token from
your profile page. Click your user in the side bar to access the `Long-Lived Access Tokens`
section at the bottom of the page.

### Required Secrets

You'll need to provide some secrets to use the action.

* **HASS_HOST**: Your fully qualified host address for your Home Assistant instance, ie `https://home.yourname.com` or `https://98.22.42.53`.
* **HASS_TOKEN**: Your long-lived access token.

### Required Environment Variables

You'll need to provide some environment variables to specify exactly what you want to do.

* **DOMAIN**: The domain of the device you want to control. ie, `light`, `script`, `media_player`.
* **SERVICE**: The service you want called on that domain. ie, `turn_on`, `pause`.
* **SERVICE_DATA**: A JSON string of data for the service call. ie, `{"entity_id":"light.living_room_window", "flash": "short"}`

[Learn more](https://developers.home-assistant.io/docs/en/external_api_rest.html#post-api-services-lt-domain-lt-service) about service calls via the REST api.


## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
