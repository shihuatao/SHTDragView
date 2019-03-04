//
//  DragView.m
//  Expecta
//
//  Created by 史华涛 on 2019/3/4.
//

#import "DragView.h"

@implementation DragView



-(void)setBgImage:(UIImage *)bgImage
{
    _bgImage = bgImage;
    self.backgroundColor = [UIColor redColor];
    UIImageView *bgImageView = [[UIImageView alloc]initWithFrame:self.bounds];
    bgImageView.userInteractionEnabled = YES;
    bgImageView.image = bgImage;
    [self addSubview:bgImageView];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    NSLog(@"%s",__func__);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    NSLog(@"%s",__func__);
    
    // 获取⼿手指的对象
    UITouch *touch = [touches anyObject];
    
    //获取当前⼿手指所在的点.
    CGPoint curP = [touch locationInView:self];
    
    //获取⼿手指的上前一个点.
    CGPoint preP = [touch previousLocationInView:self];
   
    //X轴⽅方向偏移量
    CGFloat offsetX = curP.x - preP.x;
    
    //Y轴⽅方向偏移量
    CGFloat offsetY = curP.y - preP.y;

    
    self.transform = CGAffineTransformTranslate(self.transform, offsetX, offsetY);
    

}



@end
