
<p align="center">
  <img src="https://cdn.dribbble.com/users/341264/screenshots/2203511/wave.gif" width="600" height="300" />
</p>

<p align="center">
  <img src="./assets/siriwave9.gif" width="600" height="300" />
</p>


<p align="center">
  <a href="https://www.npmjs.com/package/react-native-siri-wave-view"><img src="http://img.shields.io/npm/v/react-native-siri-wave-view.svg?style=flat" /></a>
  <a href="https://github.com/prscX/react-native-siri-wave-view/pulls"><img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" /></a>
  <a href="https://github.com/prscX/react-native-siri-wave-view#License"><img src="https://img.shields.io/npm/l/react-native-siri-wave-view.svg?style=flat" /></a>
</p>


# React Native Siri Wave View

This library is a React Native bridge around native libraries providing **Siri Wave** implementation:

- iOS: [stefanceriu/SCSiriWaveformView](https://github.com/stefanceriu/SCSiriWaveformView) - Siri Wave 7 Implementation
- iOS: [prscX/PXSiriWave](https://github.com/prscX/PXSiriWave9) - Siri Wave 9 Implementation
- Android: [alexgomes09/SIRIWaveView](https://github.com/alexgomes09/SIRIWaveView) - Siri Wave 7 Implementation

## Getting started

- `$ npm install react-native-siri-wave-view --save`

- `$ react-native link react-native-siri-wave-view`

#### Android
- Please add `react-native-siri-wave-view` & `siriwaveview` module in your app by adding below snippet in your app settings.gradle. If it already exisit please ignore:

```javascript
include ':react-native-siri-wave-view'
project(':react-native-siri-wave-view').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-siri-wave-view/android')

include ':siriwaveview'
project(':siriwaveview').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-siri-wave-view/android/SIRIWaveView/siriwaveview')
```

- Add below `:react-native-siri-wave-view` & `:siriwaveview` in your app `build.gradle` depenencies:

```
dependencies {
    compile project(':siriwaveview')
    compile project(':react-native-siri-wave-view')
    compile fileTree(dir: "libs", include: ["*.jar"])
}

```

- Please make sure your app `gradle` version is `2.3.3` > and above

- Please make sure your Android SDK > 25 and above

> **Note:** If you encounter [ISSUE - 2](https://github.com/prscX/react-native-siri-wave-view/issues/2), Please replace `import com.alex.siriwaveview.RNSiriWaveViewPackage;` with `import ui.siriwave.RNSiriWaveViewPackage;` in your app Android `MainApplication.java` class 

<img src="./assets/ISSUE.png" />

#### iOS

- Please run below command in order to install `cocoapods` required by the library:

`cd ./node_modules/react-native-siri-wave-view/ios/ && pod install`


## Usage

```javascript

import RNSiriWaveView from 'react-native-siri-wave-view';

<RNSiriWaveView type={0} width={400} height={200} startAnimation={this.state.startAnimation} stopAnimation={this.state.stopAnimation} />

```

## Props


| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `width`           | `number`     |    200     | Width of Siri Wave View |
| `height`       | `number`     |    100     | Height of Siri Wave View                        |
| `type`       | `number`     |    0     | Specify type of wave you need. Default: 0, SiriWave9: 1                        |
| `numberOfWaves`     | `number` |   5      | Number of waves you want in the view                                       |
| `backgroundColor` | `string` |    #FFFFFF     | Background Color of Siri Wave View           |  |
| `waveColor`    | `string`     |   #000000      | Color of Siri Waves                                        |  |
| `primaryWaveLineWidth`      | `string`     |   iOS: 3, Android: 50      | Width of primary wave
| `iOS: secondaryWaveLineWidth`      | `string`     |   1      | Width of secondary wave |
| `frequency`      | `number`     |    1.5     | Frequency of Waves |
| `idleAmplitude`      | `number`     |    0.01     | Idle Amplitude of Waves |
| `amplitude`      | `number`     |    0.01     | Amplitude of Waves |
| `startAnimation`      | `bool`     |    false     | To Start the wave animation |
| `stopAnimation`      | `bool`     |   false      | To Stop the ongoing wave animation |
| `iOS: density`      | `number`     |     5    | Density of Waves |
| `iOS: phaseShift`      | `number`     |   -0.15      | Width of secondary wave |


- **Siri Wave 9 Props**


| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `amplitude`      | `number`     |    0.01     | Amplitude of Waves |
| `frequency`      | `number`     |    1.5     | Frequency of Waves |
| `intensity`      | `number`     |    0.3     | Specify intensity of wave |
| `colors`      | `array`     |    ["#2085fc", "#5efca9", "#fd4767"]     | Specify colors of siri wave 9 colors |


## Credit
- iOS: [stefanceriu/SCSiriWaveformView](https://github.com/stefanceriu/SCSiriWaveformView)
- Android: [alexgomes09/SIRIWaveView](https://github.com/alexgomes09/SIRIWaveView)
- Siri Wave 9 Implementation by: [GreatPotter](https://github.com/GreatPotter)

## Contribution
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.

## License
Copyright @2017 Pranav Raj Singh Chauhan

RNSiriWaveView is provided under the Apache 2 License.

