/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var {
  View,
  PropTypes,
  requireNativeComponent,
  NativeModules,
} = React;

var NativeBaiduMap = requireNativeComponent('BaiduMap', BaiduMap);
var NativeBaiduMapManager = NativeModules.BaiduMapManager;

var BaiduMap = React.createClass({
  propTypes: {
  
  },
  addPinAnnotation: function(lat, lng, title) {
    var handle = React.findNodeHandle(this);
    NativeBaiduMapManager.addPointAnnotation(handle, lat, lng, title);
  },
  render: function () {
    return <NativeBaiduMap {...this.props}/>;
  },
  componentDidMount: function() {
    var self = this;
  }
});

module.exports = BaiduMap;