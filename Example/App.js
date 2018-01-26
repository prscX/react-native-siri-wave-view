/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';

import RNSiriWaveView from 'react-native-siri-wave-view'

export default class App extends Component<{}> {
  constructor (props) {
    super(props)

    this.state = {
      startAnimation: false
    }
  }

  componentDidMount () {
    this.setState({
      startAnimation: true
    })

    setInterval(() => {
      if (this.state.startAnimation) {
        this.setState({ startAnimation: false, stopAnimation: true });
      } else {
        this.setState({ startAnimation: true, stopAnimation: false });
      }
    }, 30000)
  }

  render() {
    return (
      <View style={styles.container}>
        <RNSiriWaveView width={400} height={200} startAnimation={this.state.startAnimation} stopAnimation={this.state.stopAnimation} />
      </View>
    );
  }
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-around",
    alignItems: "center",
    backgroundColor: "#F5FCFF"
  }
});