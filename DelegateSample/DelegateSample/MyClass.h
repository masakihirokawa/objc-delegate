//
//  MyClass.h
//  DelegateSample
//
//  Created by 廣川政樹 on 2013/04/24.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocolを宣言しておく
@protocol SampleDelegate;

@interface MyClass : UIViewController {
  //デリゲートを登録
  id<SampleDelegate> _delegate;
}

//デリゲートのプロパティ宣言
@property (nonatomic, assign) id<SampleDelegate> delegate;

//ViewControllerから呼ばれるサンプルメソッド
- (void)callDelegate;

@end

#pragma mark delegate prottype
//protocol宣言
@protocol SampleDelegate<NSObject>
//デリゲート経由で呼ばれるメソッドを宣言
@optional
- (void)sample;
@end