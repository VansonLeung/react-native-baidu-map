//
//  BaiduMap.m
//  ReactNativeExampleBaiduMap
//
//  Created by Vanson on 19/7/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "BaiduMap.h"
#import <UIKit/UIKit.h>

@implementation BaiduMap

-(int)addPointAnnotation:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude title:(NSString*)title
{
	BMKPointAnnotation* annotation = [[BMKPointAnnotation alloc]init];
	coor.latitude = latitude;
	coor.longitude = longitude;
	annotation.coordinate = coor;
	annotation.title = title;
	[self addAnnotation:annotation];
	[self setCenterCoordinate:coor];
	[self setZoomLevel:17];
	return 0;
}

-(void)centerToCoor
{
	[self setCenterCoordinate:coor];
}


- (BMKAnnotationView *)mapView:(BMKMapView *)mapView viewForAnnotation:(id <BMKAnnotation>)annotation
{
	if ([annotation isKindOfClass:[BMKPointAnnotation class]]) {
		BMKPinAnnotationView *newAnnotationView = [[BMKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"myAnnotation"];
		newAnnotationView.pinColor = BMKPinAnnotationColorPurple;
		newAnnotationView.animatesDrop = YES;// 设置该标注点动画显示
		return newAnnotationView;
	}
	return nil;
}
@end
