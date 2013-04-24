//
//  MyClass.m
//  DelegateSample
//
//  Created by 廣川政樹 on 2013/04/24.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "MyClass.h"

@interface MyClass ()

@end

@implementation MyClass

//delegateを宣言しておく
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

//ViewControllerから呼ばれるメソッド
- (void)callDelegate
{
  [delegate sample];
}

@end
