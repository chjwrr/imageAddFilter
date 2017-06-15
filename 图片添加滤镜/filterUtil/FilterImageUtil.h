//
//  FilterImageUtil.h
//  图片添加滤镜
//
//  Created by Mac on 2017/6/15.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FilterImageUtil : NSObject


/**
 给图片添加滤镜

 @param inImage 需要添加滤镜的图片
 @param f 滤镜类型
 @return 返回添加滤镜后的图片
 */

+ (UIImage*)processImage:(UIImage*)inImage withColorMatrix:(const float*) f;



/**
 滤镜类型
 */

//lomo
UIKIT_EXTERN const float colormatrix_lomo[];

//黑白
UIKIT_EXTERN const float colormatrix_heibai[];

//旧化
UIKIT_EXTERN const float colormatrix_huajiu[];

//哥特
UIKIT_EXTERN const float colormatrix_gete[];

//锐色
UIKIT_EXTERN const float colormatrix_ruise[];

//淡雅
UIKIT_EXTERN const float colormatrix_danya[];

//酒红
UIKIT_EXTERN const float colormatrix_jiuhong[];

//清宁
UIKIT_EXTERN const float colormatrix_qingning[];

//浪漫
UIKIT_EXTERN const float colormatrix_langman[];

//光晕
UIKIT_EXTERN const float colormatrix_guangyun[];

//蓝调
UIKIT_EXTERN const float colormatrix_landiao[];

//梦幻
UIKIT_EXTERN const float colormatrix_menghuan[];

//夜色
UIKIT_EXTERN const float colormatrix_yese[];



@end
