//
//  BaiduMapManager.m
//  ReactNativeExampleBaiduMap
//
//  Created by Vanson on 19/7/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "BaiduMapManager.h"
#import "BaiduMap.h"

#import "RCTBridge.h"
#import "RCTSparseArray.h"
#import "RCTUIManager.h"

#import <UIKit/UIKit.h>

@implementation BaiduMapManager

RCT_EXPORT_MODULE();

//RCT_EXPORT_VIEW_PROPERTY(isRed, BOOL)

- (BaiduMap *)view
{
	BaiduMap * map = [[BaiduMap alloc] initWithFrame:CGRectMake(0,0,200,200)];
	return map;
}

RCT_EXPORT_METHOD(addPointAnnotation:(NSNumber *)reactTag latitude:(NSNumber*)latitude longitude:(NSNumber*)longitude title:(NSString*)title)
{
	[self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, RCTSparseArray *viewRegistry) {
		BaiduMap *view = viewRegistry[reactTag];
		if (![view isKindOfClass:[BaiduMap class]]) {
			RCTLogError(@"Invalid view returned from registry, expecting BaiduMap, got: %@", view);
		}
		
		[view addPointAnnotation:[latitude doubleValue] longitude:[longitude doubleValue] title:title];
	}];
}

@end
