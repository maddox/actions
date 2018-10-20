# GitHub Actions

Fun with robots.

This is a collection of GitHub Actions that I thought might be useful to others.
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
}
```

## [Sleep](sleep)

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

## License

[MIT](LICENSE). Please see additional information in each subdirectory.
