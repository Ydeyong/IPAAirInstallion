//
//  ViewController.m
//  test2
//
//  Created by ydy on 2018/12/26.
//  Copyright © 2018 ydy. All rights reserved.
//

#import "ViewController.h"
#import <Photos/Photos.h>
#import "DYViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webV;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController
- (IBAction)clicked:(id)sender {
    UIViewController *vc = [[DYViewController alloc]init];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    return;

//    NSURLRequestCachePolicy
    self.webV.scrollView.scrollEnabled = false;
    self.webV.allowsLinkPreview = true;
    self.webV.allowsInlineMediaPlayback = true;
    self.webV.allowsPictureInPictureMediaPlayback = true;
    self.webV.mediaPlaybackAllowsAirPlay = true;
    NSURL *url = [[NSURL alloc]initWithString:@"http://test.u-road.com/GuangJiaoTou/BigScreen/www/html/pad/iapdindex.html"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:20] ;
    [self.webV loadRequest:req];
    
    CGFloat scale = UIScreen.mainScreen.scale;
    
    PHFetchOptions *allPhotoOptions = [[PHFetchOptions alloc]init];
//    allPhotoOptions.sortDescriptors =@[ [[NSSortDescriptor alloc]initWithKey:@"creationDate" ascending:false]];
//    allPhotoOptions.predicate = [NSPredicate predicateWithFormat:@"mediaType = %d",PHAssetMediaTypeImage];
    
    PHFetchResult *res = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:allPhotoOptions];
    
    NSLog(@"%d",res.count);
    
    [res enumerateObjectsUsingBlock:^(PHAsset *obj, NSUInteger idx, BOOL * _Nonnull stop) {
      
       
        NSLog(@"%@", obj.creationDate.description);
        
        
    }];
    

    
    
//            while i<self.assetsFetchResults.count {
//                let asset = self.assetsFetchResults[i]
//                print(" 创建时间：\(asset.creationDate?.description)")   //打印所有图片的创建时间
//                i += 1
//            }
    

//        self.assetsFetchResults = PHAsset.fetchAssets(with: .image,
//                                                      options: allPhotoOptions) //查询照片类型
//        var i = 0
//        while i<self.assetsFetchResults.count {
//            let asset = self.assetsFetchResults[i]
//            print(" 创建时间：\(asset.creationDate?.description)")   //打印所有图片的创建时间
//            i += 1
//        }
    
//        if (self.assetsFetchResults.count > 0) {
//            //显示最近一张拍摄的图片（也可以根据拍摄时间远近决定是否要显示）
//            self.imageManager.requestImage(for: self.assetsFetchResults[0],     //最近一张图片
//                                           targetSize: self.assetGridThumbnailSize,
//                                           contentMode: .aspectFill,
//                                           options: nil, resultHandler: { (image, info) in
//                                               self.imageView.image = image   //取出图像并显示出来
//                                           })
//
//        }
//
//        print("图片数量：\(self.assetsFetchResults?.count)")
//
//        //注册监听资源变化
//        PHPhotoLibrary.shared().register(self)    //删除是unregisterChangeObserver
    
//    })
}



-(UIUserInterfaceStyle)overrideUserInterfaceStyle{
    return  UIUserInterfaceStyleLight;
}
@end
