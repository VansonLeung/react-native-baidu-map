/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  Text,
  View,

  PropTypes,
  requireNativeComponent,
} = React;


var NATIVE_BAIDUMAP_REF = 'NARIVEBAIDUMAP';
var BAIDUMAP_REF = 'BAIDUMAP';

var BaiduMap = React.createClass({
  propTypes: {
  
  },
  addPinAnnotation: function(lat, lng, title) {
    var handle = React.findNodeHandle(this);
    NativeBaiduMapManager.addPointAnnotation(handle, lat, lng, title);
  },
  render: function () {
    return <NativeBaiduMap ref={NATIVE_BAIDUMAP_REF} {...this.props}/>;
  },
  componentDidMount: function() {
    var self = this;
    setTimeout(function(){self.addPinAnnotation(22.370499, 114.129939, "BAIDU POSITION");}, 0);
  }
});
var NativeBaiduMap = requireNativeComponent('BaiduMap', BaiduMap);
var NativeBaiduMapManager = require('NativeModules').BaiduMapManager;

var ReactNativeExampleBaiduMap = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit index.ios.js
        </Text>
        <Text style={styles.instructions}>
          Press Cmd+R to reload,{'\n'}
          Cmd+D or shake for dev menu
        </Text>
        <BaiduMap style={styles.map} />
      </View>
    );
  },

  componentDidMount: function() {
    // AsyncStorage.getItem('some-identifier').then(value => {
    //     this.setState({
    //         isPresent: value !== null
    //     });
    // });
  },

});

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  map: {
    margin: 10,
    width: 200,
    height: 200,
  },
});

AppRegistry.registerComponent('ReactNativeExampleBaiduMap', () => ReactNativeExampleBaiduMap);
