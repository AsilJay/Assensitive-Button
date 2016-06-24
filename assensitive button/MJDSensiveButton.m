//
//  MJDSensiveButton.m
//  assensitive button
//
//  Created by myjawdrops on 16/6/24.
//  Copyright © 2016年 MyJawDrops. All rights reserved.
//

#import "MJDSensiveButton.h"

@interface MJDSensiveButton ()
@property (nonatomic, assign) CGPoint  startPoint;
@end

@implementation MJDSensiveButton


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    self.startPoint = [touch locationInView:self];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    CGFloat offsetX = point.x - self.startPoint.x;
    CGFloat offsetY = point.y - self.startPoint.y;
    self.center = CGPointMake(self.center.x + offsetX, self.center.y + offsetY);
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    CGRect superViewFrame = self.superview.frame;
    [UIView animateWithDuration:0.5 animations:^{
        
        if (self.center.x > superViewFrame.size.width / 2) {
            if (self.frame.origin.y < self.edgeInsets.top) {
                self.center = CGPointMake(superViewFrame.size.width - self.frame.size.width/2 - self.edgeInsets.right, self.edgeInsets.top + self.frame.size.height/2 +20);
            }else if (self.frame.origin.y > superViewFrame.size.height - self.frame.size.height - self.edgeInsets.bottom){
                self.center = CGPointMake(superViewFrame.size.width - self.frame.size.width/2 - self.edgeInsets.right, superViewFrame.size.height - self.frame.size.height/2 - self.edgeInsets.bottom);
            }else{
                self.center = CGPointMake(superViewFrame.size.width - self.frame.size.width/2 - self.edgeInsets.right, self.center.y);
            }
        }else{
            if (self.frame.origin.y < self.edgeInsets.top) {
                self.center = CGPointMake(self.frame.size.width/2 + self.edgeInsets.left, self.edgeInsets.top + self.frame.size.height/2 +20);
            }else if (self.frame.origin.y > superViewFrame.size.height - self.frame.size.height - self.edgeInsets.bottom){
                self.center = CGPointMake(self.frame.size.width/2 + self.edgeInsets.left, superViewFrame.size.height - self.frame.size.height/2 - self.edgeInsets.bottom);
            }else{
                self.center = CGPointMake(self.frame.size.width/2 + self.edgeInsets.left, self.center.y);
            }
        }
    }];
}

@end
