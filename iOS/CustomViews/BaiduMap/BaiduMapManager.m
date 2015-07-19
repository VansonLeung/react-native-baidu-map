//
//  BaiduMapManager.m
//  ReactNativeExampleBaiduMap
//
//  Created by Vanson on 19/7/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "BaiduMapManager.h"
#import "BaiduMap.h"
#import <UIKit/UIKit.h>

@implementation BaiduMapManager

RCT_EXPORT_MODULE();

//RCT_EXPORT_VIEW_PROPERTY(isRed, BOOL)

- (BaiduMap *)view
{
	BaiduMap * map = [[BaiduMap alloc] initWithFrame:CGRectMake(0,0,280,280)];
	return map;
}


@end
