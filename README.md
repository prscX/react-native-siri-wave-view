
<p align="center">
  <img src="https://cdn.dribbble.com/users/341264/screenshots/2203511/wave.gif" width="600" height="300" />
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/react-native-siri-wave-view"><img src="http://img.shields.io/npm/v/react-native-siri-wave-view.svg?style=flat" /></a>
  <a href="https://github.com/prscX/react-native-siri-wave-view/pulls"><img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" /></a>
  <a href="https://github.com/prscX/react-native-siri-wave-view#License"><img src="https://img.shields.io/npm/l/react-native-siri-wave-view.svg?style=flat" /></a>
</p>


# React Native Siri Wave View

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

| [awesome-react-native-native-modules](https://github.com/prscX/awesome-react-native-native-modules)              |
| ----------------- |
| <img src="https://github.com/prscX/awesome-react-native-native-modules/raw/master/assets/hero.png" width="600" height="300" />                  |


| [react-native-spruce](https://github.com/prscX/react-native-spruce)              |
| ----------------- |
| <img src="https://github.com/willowtreeapps/spruce-ios/raw/master/imgs/extensibility-tests.gif" width="600" height="300" />                  |


| [react-native-taptargetview](https://github.com/prscX/react-native-taptargetview) & [react-native-material-showcase-ios](https://github.com/prscX/react-native-material-showcase-ios)              |
| ----------------- |
| <img src="https://github.com/KeepSafe/TapTargetView/raw/master/.github/video.gif" width="600" height="600" />  |


| [react-native-bottom-action-sheet](https://github.com/prscX/react-native-bottom-action-sheet)              |
| ----------------- |
| <img src="https://github.com/rubensousa/BottomSheetBuilder/raw/master/screens/normal_demo.gif" width="600" height="600" />                  |


| [react-native-popover-menu](https://github.com/prscX/react-native-popover-menu)             |
| ----------------- |
| <img src="https://github.com/zawadz88/MaterialPopupMenu/raw/master/art/components_menus.png" width="600" height="300" />                  |


| [react-native-tooltips](https://github.com/prscX/react-native-tooltips)             |
| ----------------- |
| <img src="https://camo.githubusercontent.com/add1764d27026b81adb117e07a10781c9abbde1b/687474703a2f2f692e696d6775722e636f6d2f4f4e383257526c2e676966" width="600" height="300" />                  |


| [react-native-shine-button](https://github.com/prscX/react-native-shine-button)             |
| ----------------- |
| <img src="https://raw.githubusercontent.com/ChadCSong/ShineButton/master/demo_shine_others.gif" width="600" height="300" />                  |


| [react-native-iconic](https://github.com/prscX/react-native-iconic)             |
| ----------------- |
| <img src="https://camo.githubusercontent.com/b18993cbfe91de8abdc0019dc9a6cd44707eec21/68747470733a2f2f6431337961637572716a676172612e636c6f756466726f6e742e6e65742f75736572732f3338313133332f73637265656e73686f74732f313639363538302f766266706f70666c6174627574746f6e332e676966" width="600" height="300" />                  |


| [react-native-download-button](https://github.com/prscX/react-native-download-button)             |
| ----------------- |
| <img src="https://github.com/fenjuly/ArrowDownloadButton/raw/master/screenshots/arrowdownloadbutton.gif" width="600" height="600" />                  |


|  [react-native-material-shadows](https://github.com/prscX/react-native-material-shadows)             |
| ----------------- |
| <img src="https://raw.githubusercontent.com/harjot-oberai/MaterialShadows/master/screens/cover.png" width="600" height="300" />                  |


|  [react-native-gradient-blur-view](https://github.com/prscX/react-native-gradient-blur-view)             |
| ----------------- |
| <img src="https://github.com/prscX/react-native-gradient-blur-view/raw/master/assets/hero.png" width="600" height="300" />                  |


|  [react-native-about-libraries](https://github.com/prscX/react-native-about-libraries)             |
| ----------------- |
| <img src="https://github.com/prscX/react-native-about-libraries/raw/master/hero.png" width="600" height="600" />                  |



|  [vs-essential-plugins](https://github.com/prscX/vs-essential-plugins)             |
| ----------------- |
| <img src="https://pbs.twimg.com/profile_images/922911523328081920/jEKFRPKV_400x400.jpg" width="600" height="300" />                  |


|  [prettier-pack](https://github.com/prscX/prettier-pack)             |
| ----------------- |
| <img src="https://raw.githubusercontent.com/prettier/prettier-logo/master/images/prettier-banner-light.png" width="600" height="300" />                  |
