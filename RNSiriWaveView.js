import React, { Component } from "react";
import { StyleSheet, ViewPropTypes, Platform } from "react-native";
import PropTypes from "prop-types";

import { requireNativeComponent } from "react-native";

class RNSiriWaveView extends Component {

  render() {
    if (Platform.OS === "ios") {
      return (
        <SiriWaveView style={{ width: this.props.width, height: this.props.height }} props={{
          width: this.props.width,
          height: this.props.height,
          numberOfWaves: this.props.numberOfWaves,
          backgroundColor: this.props.backgroundColor,
          waveColor: this.props.waveColor,
          primaryWaveLineWidth: this.props.primaryWaveLineWidth,
          secondaryWaveLineWidth: this.props.secondaryWaveLineWidth,
          frequency: this.props.frequency,
          idleAmplitude: this.props.idleAmplitude,
          amplitude: this.props.amplitude,
          density: this.props.density,
          phaseShift: this.props.phaseShift
        }} />
      );
    } else if (Platform.OS === "android") {
      return (
        <SiriWaveView />
      );
    }
  }
}

RNSiriWaveView.propTypes = {
  ...ViewPropTypes,

  width: PropTypes.number,
  height: PropTypes.number,
  props: PropTypes.object,

  numberOfWaves: PropTypes.number,
  backgroundColor: PropTypes.string,
  waveColor: PropTypes.string,
  primaryWaveLineWidth: PropTypes.number,
  secondaryWaveLineWidth: PropTypes.number,
  frequency: PropTypes.number,
  idleAmplitude: PropTypes.number,
  amplitude: PropTypes.number,
  density: PropTypes.number,
  phaseShift: PropTypes.number
};

RNSiriWaveView.defaultProps = {
  width: 200,
  height: 100,

  numberOfWaves: 5,
  backgroundColor: '#FFFFFF',
  waveColor: "#000000",
  primaryWaveLineWidth: 3,
  secondaryWaveLineWidth: 1,
  frequency: 1.5,
  idleAmplitude: 0.01,
  amplitude: 0.01,
  density: 5,
  phaseShift: -0.15
};

const SiriWaveView = requireNativeComponent(
  "RNSiriWaveView",
  RNSiriWaveView
);

export default RNSiriWaveView;
