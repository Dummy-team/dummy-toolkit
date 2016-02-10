# Bootstrap grid setup

- [Documentation](http://getbootstrap.com/css/#grid)
- [ie8 support](http://getbootstrap.com/getting-started/#support-ie8-respondjs)

## Import ressources
### Styles
```scss
// main.scss
@import 'objects/grid';
@import 'objects/responsive-utilities';
@import 'tools/clearfix';
@import 'tools/grid-framework';
@import 'tools/grid';
@import 'tools/responsive-visibility';
```

#### The default variables can be overwritten in your settings.

```scss
// dimensions.scss
$screen-sm-min: $vw-small;
$screen-md-min: $vw-medium;
$screen-lg-min: $vw-large;

$screen-xs-max: ($screen-sm-min - 1);
$screen-sm-max: ($screen-md-min - 1);
$screen-md-max: ($screen-lg-min - 1);

$container-sm: $vw-small;
$container-md: $vw-medium;
$container-lg: $vw-large;
$container-xlg: $vw-huge;

```
