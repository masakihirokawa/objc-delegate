//
//  ViewController.m
//  DelegateSample
//
//  Created by 廣川政樹 on 2013/04/24.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //MyClass初期化
  MyClass *myClass = [[MyClass alloc] init];
  //MyClassの delegateに自分自身を渡す
  myClass.delegate = self;
  //MyClassのデリゲートメソッド呼び出し
  [myClass callDelegate];
}

//デリゲートメソッド
- (void)sample
{
  NSLog(@"sample");
}

@end
