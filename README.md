## 小网页介绍
[参考](https://www.pixiv.net/artworks/75657296) by 画师JW

运行该网页需要**强大的CPU**

### 1. 视频图片

该网页由21个图层组成，其中人物和鸟是抠图完成，其余使用After Effect制作特效完成

带透明通道视频由ae渲染，ffmpeg压制

### 2. 代码部分

使用了jQuery库与parallax库实现视觉差等特效

#### 已知bug(特性)

本地运行会无法获取mask.png(CORS)，

**解决方案**:

1. 本地启用网页访问
2. 浏览器快捷方式加上参数 ``--allow-file-access-from-files``


