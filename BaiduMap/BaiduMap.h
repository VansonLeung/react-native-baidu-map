//
//  BaiduMap.h
//  ReactNativeExampleBaiduMap
//
//  Created by Vanson on 19/7/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BaiduMapAPI/BMKMapView.h>
#import <BaiduMapAPI/BMapKit.h>

@class RCTEventDispatcher;

@interface BaiduMap : BMKMapView <BMKMapViewDelegate>
{
	RCTEventDispatcher * eventDispatcher;
}
@property (nonatomic) BOOL isRed;

-(int)addPointAnnotation:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude title:(NSString*)title;
-(void)centerToCoor:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude;
@end
