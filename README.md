
# React Native Siri Wave View

<img src="https://cdn.dribbble.com/users/341264/screenshots/2203511/wave.gif" />

React Native Bridge for iOS: [stefanceriu/SCSiriWaveformView](https://github.com/stefanceriu/SCSiriWaveformView) & Android: [alexgomes09/SIRIWaveView](https://github.com/alexgomes09/SIRIWaveView). It reproduces the waveform effect seen in Siri on iOS 7.

Before we dive into on how to use this library. We would like to thank all the contributor of [stefanceriu/SCSiriWaveformView](https://github.com/stefanceriu/SCSiriWaveformView) & [alexgomes09/SIRIWaveView](https://github.com/alexgomes09/SIRIWaveView) for providing such a awesome nice, cool library

## Getting started

- `$ npm install react-native-siri-wave-view --save`

- `$ react-native link react-native-siri-wave-view`

#### Android
Please add siriwaveview module in your app by adding below snippet in your app settings.gradle

```javascript
include ':siriwaveview'
project(':siriwaveview').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-siri-wave-view/android/SIRIWaveView/siriwaveview')
```

## Usage

```javascript

import RNSiriWaveView from 'react-native-siri-wave-view';

<RNSiriWaveView width={400} height={200} startAnimation={this.state.startAnimation} stopAnimation={this.state.stopAnimation} />

```

## Props


| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `width`           | `number`     |    200     | Width of Siri Wave View |
| `height`       | `number`     |    100     | Height of Siri Wave View                                                         |
| `numberOfWaves`     | `number` |   5      | Number of waves you want in the view                                       |
| `backgroundColor` | `string` |    #FFFFFF     | Background Color of Siri Wave View           |  |
| `waveColor`    | `string`     |   #000000      | Color of Siri Waves                                        |  |
| `primaryWaveLineWidth`      | `string`     |   iOS: 3, Android: 50      | Width of primary wave
| `iOS: secondaryWaveLineWidth`      | `string`     |   1      | Width of secondary wave |
| `frequency`      | `number`     |    1.5     | Frequency of Waves |
| `idleAmplitude`      | `number`     |    0.01     | Idle Amplitude of Waves |
| `amplitude`      | `number`     |    0.01     | Amplitude of Waves |
| `iOS: density`      | `number`     |     5    | Density of Waves |
| `iOS: phaseShift`      | `number`     |   -0.15      | Width of secondary wave |
| `startAnimation`      | `bool`     |    false     | To Start the wave animation |
| `stopAnimation`      | `bool`     |   false      | To Stop the ongoing wave animation |


## Credit
- iOS: [stefanceriu/SCSiriWaveformView](https://github.com/stefanceriu/SCSiriWaveformView)
- Android: [alexgomes09/SIRIWaveView](https://github.com/alexgomes09/SIRIWaveView)

## Contribution
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.

## License
Copyright @2017 Pranav Raj Singh Chauhan

RNSiriWaveView is provided under the MIT License.



## Other Contributions
- React Native - Spruce: [react-native-spruce](https://github.com/prscX/react-native-spruce)

![Screenshots](https://github.com/willowtreeapps/spruce-ios/raw/master/imgs/extensibility-tests.gif)

- React Native - App Tour Library: [react-native-taptargetview](https://github.com/prscX/react-native-taptargetview) & [react-native-material-showcase-ios](https://github.com/prscX/react-native-material-showcase-ios)

![Screenshots](https://github.com/KeepSafe/TapTargetView/raw/master/.github/video.gif)
![Screenshots](https://github.com/aromajoin/material-showcase-ios/raw/master/art/material-showcase.gif?raw=true)

- React Native - Bottom Action Sheet: [react-native-bottom-action-sheet](https://github.com/prscX/react-native-bottom-action-sheet)

![](https://github.com/rubensousa/BottomSheetBuilder/raw/master/screens/normal_demo.gif)

- React Native - Popover: [react-native-popover-menu](https://github.com/prscX/react-native-popover-menu)

![](https://github.com/zawadz88/MaterialPopupMenu/raw/master/art/components_menus.png)

- React Native - Tooltips: [react-native-tooltips](https://github.com/prscX/react-native-tooltips)

![](https://camo.githubusercontent.com/add1764d27026b81adb117e07a10781c9abbde1b/687474703a2f2f692e696d6775722e636f6d2f4f4e383257526c2e676966)

- React Native - Shine Button: [react-native-shine-button](https://github.com/prscX/react-native-shine-button)

![Screenshots](https://raw.githubusercontent.com/ChadCSong/ShineButton/master/demo_shine_others.gif)

- React Native Iconic: [react-native-iconic](https://github.com/prscX/react-native-iconic)
![Screenshots](https://camo.githubusercontent.com/b18993cbfe91de8abdc0019dc9a6cd44707eec21/68747470733a2f2f6431337961637572716a676172612e636c6f756466726f6e742e6e65742f75736572732f3338313133332f73637265656e73686f74732f313639363538302f766266706f70666c6174627574746f6e332e676966)

- React Native Download Button: [react-native-download-button](https://github.com/prscX/react-native-download-button)

![](https://github.com/fenjuly/ArrowDownloadButton/raw/master/screenshots/arrowdownloadbutton.gif)


- React Native Material Shadows: [react-native-material-shadows](https://github.com/prscX/react-native-material-shadows)

![](
https://raw.githubusercontent.com/harjot-oberai/MaterialShadows/master/screens/cover.png
)

- React Native Gradient Blur View: [react-native-gradient-blur-view](https://github.com/prscX/react-native-gradient-blur-view)

![](
https://github.com/prscX/react-native-gradient-blur-view/raw/master/assets/hero.png
)

- React Native About Libraries: [react-native-about-libraries](https://github.com/prscX/react-native-about-libraries)

![](
https://github.com/prscX/react-native-about-libraries/raw/master/hero.png
)

- Visual Code Essential Plugins: [vs-essential-plugins](https://github.com/prscX/vs-essential-plugins)

![Screenshots](https://pbs.twimg.com/profile_images/922911523328081920/jEKFRPKV_400x400.jpg)

- Prettier Pack: [prettier-pack](https://github.com/prscX/prettier-pack)

![Screenshots](https://raw.githubusercontent.com/prettier/prettier-logo/master/images/prettier-banner-light.png)


