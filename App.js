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

import {
  GiftedChat,
} from 'react-native-gifted-chat';

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

export default class App extends Component<{}> {
  state = {
    messages: [],
  };  

  render() {
    return (
        <GiftedChat 
          messages={this.state.messages}
          onSend={(messages) => 0}
          user = {{ _id: 1 }}
        />
    );
  }
}
