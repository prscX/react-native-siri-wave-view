
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
| `width`           | `number`     |         | Width of Siri Wave View |
| `height`       | `number`     |         | Height of Siri Wave View                                                         |
| `numberOfWaves`     | `number` |         | Number of waves you want in the view                                       |
| `backgroundColor` | `string` |         | Background Color of Siri Wave View           |  |
| `waveColor`    | `string`     |         | Color of Siri Waves                                        |  |
| `primaryWaveLineWidth`      | `string`     |         | Width of primary wave
| `iOS: secondaryWaveLineWidth`      | `string`     |         | Width of secondary wave |
| `frequency`      | `number`     |         | Frequency of Waves |
| `idleAmplitude`      | `number`     |         | Idle Amplitude of Waves |
| `amplitude`      | `number`     |         | Amplitude of Waves |
| `iOS: density`      | `number`     |         | Density of Waves |
| `iOS: phaseShift`      | `number`     |         | Width of secondary wave |
| `startAnimation`      | `bool`     |         | To Start the wave animation |
| `stopAnimation`      | `bool`     |         | To Stop the ongoing wave animation |


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

- React Native - Shine Button: [react-native-shine-button](https://github.com/prscX/react-native-shine-button)

![Screenshots](https://raw.githubusercontent.com/ChadCSong/ShineButton/master/demo_shine_others.gif)

- React Native Iconic: [react-native-iconic](https://github.com/prscX/react-native-iconic)
![Screenshots](https://camo.githubusercontent.com/b18993cbfe91de8abdc0019dc9a6cd44707eec21/68747470733a2f2f6431337961637572716a676172612e636c6f756466726f6e742e6e65742f75736572732f3338313133332f73637265656e73686f74732f313639363538302f766266706f70666c6174627574746f6e332e676966)
![Screenshots](https://camo.githubusercontent.com/642bd91749dce58abfba00fe1cefdf2cf4213fd3/68747470733a2f2f7261772e6769746875622e636f6d2f62616c7973762f6d6174657269616c2d6d656e752f6d61737465722f6172742f64656d6f2e676966)

- React Native Download Button: [react-native-download-button](https://github.com/prscX/react-native-download-button)

![](https://github.com/fenjuly/ArrowDownloadButton/raw/master/screenshots/arrowdownloadbutton.gif)


- Visual Code Essential Plugins: [vs-essential-plugins](https://github.com/prscX/vs-essential-plugins)

![Screenshots](https://pbs.twimg.com/profile_images/922911523328081920/jEKFRPKV_400x400.jpg)

- Prettier Pack: [prettier-pack](https://github.com/prscX/prettier-pack)

![Screenshots](https://raw.githubusercontent.com/prettier/prettier-logo/master/images/prettier-banner-light.png)