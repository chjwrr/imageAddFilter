//
//  ViewController.m
//  图片添加滤镜
//
//  Created by Mac on 2017/6/15.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "ViewController.h"

#import "FilterImageUtil.h"


@interface ViewController ()
@property (nonatomic,strong)UIImageView *imageView;
@property (nonatomic,strong)UIImage *img_current;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_imageView];
    
    _imageView.contentMode=UIViewContentModeScaleToFill;
    
    _img_current=[UIImage imageNamed:@"image.jpeg"];

    UIImage* filterImage = [FilterImageUtil processImage:_img_current withColorMatrix:colormatrix_huajiu];

    _imageView.image=filterImage;
    
    
    // 80*117
    UIScrollView *scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-117, self.view.frame.size.width, 117)];
    scrollView.contentSize=CGSizeMake(85*13-5, 117);
    [self.view addSubview:scrollView];
    
    UIImage *small_image=[UIImage imageNamed:@"imageSmall.jpeg"];

    for (int i=0; i<13; i++) {
        UIImageView *imgV=[[UIImageView alloc]initWithFrame:CGRectMake(85*i, 0, 80, 117)];
        [scrollView addSubview:imgV];
       
        imgV.image=[self filterImage:small_image type:i];
        
        imgV.tag=100+i;
        imgV.userInteractionEnabled=YES;
        UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
        [imgV addGestureRecognizer:tap];
        
    }
    
}

- (void)tapAction:(UITapGestureRecognizer *)gesture {
    
    UIView *view=gesture.view;

    _imageView.image=[self filterImage:_img_current type:(int)view.tag-100];
    
}


/**
 根据类型给图片添加滤镜

 @param image 图片
 @param type 滤镜类型
 @return 滤镜图片
 */

- (UIImage *)filterImage:(UIImage *)image type:(int)type {
    UIImage* filterImage;

    switch (type) {
        case 0:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_lomo];
            break;
        case 1:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_heibai];
            break;
        case 2:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_huajiu];
            break;
        case 3:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_gete];
            break;
        case 4:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_ruise];
            break;
        case 5:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_danya];
            break;
        case 6:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_jiuhong];
            break;
        case 7:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_qingning];
            break;
        case 8:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_langman];
            break;
        case 9:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_guangyun];
            break;
        case 10:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_landiao];
            break;
        case 11:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_menghuan];
            break;
        case 12:
            filterImage = [FilterImageUtil processImage:image withColorMatrix:colormatrix_yese];
            break;
            
        default:
            break;
    }

    return filterImage;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
