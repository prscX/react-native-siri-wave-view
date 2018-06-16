import React, { Component } from "react";
import { StyleSheet, ViewPropTypes, Platform } from "react-native";
import PropTypes from "prop-types";

import { requireNativeComponent } from "react-native";

class RNSiriWaveView extends Component {
  static propTypes = {
    ...ViewPropTypes,

    width: PropTypes.number,
    height: PropTypes.number,
    size: PropTypes.object,
    
    props: PropTypes.object,

    numberOfWaves: PropTypes.number,
    backgroundColor: PropTypes.string,
    waveColor: PropTypes.string,
    primaryWaveLineWidth: PropTypes.number,
    secondaryWaveLineWidth: PropTypes.number,
    frequency: PropTypes.number,
    amplitude: PropTypes.number,
    density: PropTypes.number,
    phaseShift: PropTypes.number,
    colors: PropTypes.array,

    type: PropTypes.number,

    startAnimation: PropTypes.bool,
    stopAnimation: PropTypes.bool
  }

  static defaultProps = {
    width: 200,
    height: 100,

    numberOfWaves: 5,
    backgroundColor: "#FFFFFF",
    waveColor: "#000000",
    primaryWaveLineWidth: Platform.OS === "ios" ? 3 : 50,
    secondaryWaveLineWidth: 1,
    frequency: 1.5,
    amplitude: 0.5,
    density: 5,
    phaseShift: -0.15,
    intensity: 0.3,
    colors: ["#2085fc", "#5efca9", "#fd4767"],

    type: 0,

    startAnimation: false,
    stopAnimation: false
  }

  render() {
    let {
      width,
      height,
      numberOfWaves,
      backgroundColor,
      waveColor,
      primaryWaveLineWidth,
      secondaryWaveLineWidth,
      frequency,
      amplitude,
      density,
      phaseShift,
      intensity,
      colors,
      type,
      startAnimation,
      stopAnimation
    } = this.props;

    let SiriWave
    if (type === 0) SiriWave = SiriWaveView
    else if (type === 1) SiriWave = SiriWaveView9


    return <SiriWave style={{ width: width, height: height }} 
      size={{
        width: width,
        height: height
      }}
      numberOfWaves={numberOfWaves}
      backgroundColor={backgroundColor}
      waveColor={waveColor}
      primaryWaveLineWidth={primaryWaveLineWidth}
      secondaryWaveLineWidth={secondaryWaveLineWidth}
      frequency={frequency}
      amplitude={amplitude}
      density={density}
      phaseShift={phaseShift}
      intensity={intensity}
      colors={colors}
      type={type}
      startAnimation={startAnimation}
      stopAnimation={stopAnimation}
    />;
  }
}

const SiriWaveView = requireNativeComponent(
  "RNSiriWaveView",
  RNSiriWaveView
);

const SiriWaveView9 = requireNativeComponent(
  "RNSiriWaveView9",
  RNSiriWaveView
);

export default RNSiriWaveView;
