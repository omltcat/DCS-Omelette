# 蛋卷的DCS实用小修改
- 这里的所有修改都不涉及作弊内容，不会惹怒绿盾，但由于当前DCS Bug，修改过的游戏进入过一次服务器后会变红盾，重启游戏即可恢复
- 每次DCS更新后，所有修改过的文件都会移入游戏安装根目录下的 `_backup.xxx` 文件夹中，需要手动复制回去

## 大框标签 
文件位置：`Config/View/Labels.lua`

![1海里内](https://i0.hdslb.com/bfs/album/c7019588ad4bd3598d86dd3f279da0c4cdb08295.png)


### 标签特性
- 各类标签总体放大，不再是一两个像素点
- 飞机标签1海里内为大方框,1~10海里为小方框
- 普通标签分红蓝，中位点敌我全是黄（未识别）
- 支持带文字标签，字会在框右侧显示

### 使用方法
1. 个人使用：将 `config` 放入游戏安装目录，在游戏选项内选择标签类型
   - 所有未特地设置标签选项的任务/服务器都会使用你的设置
   - 如果加入的服务器上的任务没开标签，则你也看不见
   - 如果加入服务器上有自己的标签文件（下面的方法），则强制使用服务器标签
2. 多人使用：任务编辑器内选择标签类型并保存，用解压软件打开任务miz文件，把 `config` 拖进去
   - 所有玩此任务的人，包括进入这个任务开的服务器，都会强制使用本标签
   - 注意：同一任务，编辑器和压缩包不能一起开，打开一个必须关掉另一个，否则会互相干扰保存
   
## 飞机修改
文件均放入游戏安装目录

### F-14前座使用后座功能（如干扰弹）
文件位置：`Mods/aircraft/F14/Input/F-14B-Pilot/`
- 之后F-14前座也可绑定部分原本后座才有的键位，比如蛋卷绑了
  - `AN/ALE-39 箔条 单发` `AN/ALE-39 红外干扰弹 单发`
  - `TCS 视场 窄` `TCS 视场 窄`
  - 轴命令：`雷达仰角控制` `雷达方位角控制`
    - 注意：可以选用轴或键的后座功能，在前座必须用轴，否则会被后座的轴覆盖导致无效
    
### F-15C启用尾钩
文件位置：`Mods/aircraft/Flaming Cliffs/Input/f-15c/`
- 之后Su-33的尾钩键位会出现在F-15C上，可供绑定
- 注意F-15起落架脆的一批，降航母不能学海军砸！！！
    
### 16/18默认干扰弹设置
- 将机型对应干扰弹文件放入游戏安装目录
- 与在飞机座舱里编辑干扰弹释放程序效果相同，只是改过文件之后不用每次进飞机都调一遍
#### F-16C
文件位置：`Mods/aircraft/F-16C/Cockpit/Scripts/EWS/CMDS/device/CMDS_ALE47.lua`
- 在座舱内打开干扰弹布撒器，释放模式拧到 `MAN`（手动释放）
   - `对抗管理开关 - 前` 每次释放一发箔条，实际使用 `MAN_1` 程序
   - `箔条/红外释放按钮` 每次释放两发热诱，实际使用 `MAN_5`（紧急释放）程序（可以用这个键替换HOTAS上的`对抗管理开关 - 后`）
-  在 `CMDS_ALE47.lua` 中可修改上述程序

#### F/A-18C
文件位置：`Mods/aircraft/FA-18C/Cockpit/Scripts/TEWS/device/CMDS_ALE47.lua`
- 在座舱内打开干扰弹布撒器到中间挡位（不要调到Bypass)
- 等待自检结束，在EW界面中，选择上方 `ALE-47`，下方点击 `MODE` 调整到 `MAN1`
   - `布撒按钮 - 前` 每次释放一发箔条，实际使用 `MAN_5` 程序
   - `布撒按钮 - 后` 每次释放两发热诱，实际使用 `MAN_1` 程序
-  在 `CMDS_ALE47.lua` 中可修改上述程序
