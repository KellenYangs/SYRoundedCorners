# SYRoundedCorners
快速生成圆角快速图片
感兴趣的给个Star吧...

# CocoaPods:
```
pod 'SYRoundedCorners', '~> 0.0.2'
```

# Usage:
 
导入头文件
```
#import "UIImage+SYRoundedCorners.h"
```

```
[[UIImage imageNamed:@"cat1.jpg"] sy_setCornersRadius:10 size:imgv2.bounds.size completed:^(UIImage *image) {
        imgv.image = image;
    }];
```

# 效果图
![](http://7xsuaf.com1.z0.glb.clouddn.com/ThreePart/roundedCorners.png)


# iteration:
0.0.2 - 发布第一个版本,后续会研究一下圆角图片缓存...

# Other: 
使用中有任何问题，请将问题发送给我，谢谢大家帮忙完善!
