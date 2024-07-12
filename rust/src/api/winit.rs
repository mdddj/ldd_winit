use display_info::DisplayInfo;

///读取已连接屏幕信息
pub fn ldd_get_windows_monitors() -> Vec<LddDisplayInfo> {
    let display_infos = DisplayInfo::all().unwrap();
    display_infos.into_iter().map(|v| v.into()).collect()
}

///屏幕信息
#[derive(Debug, Clone)]
pub struct LddDisplayInfo {
    /// 显示名称
    pub name: String,
    /// 与显示器关联的唯一标识符。
    pub id: u32,
    /// 显示器x坐标
    pub x: i32,
    /// 显示器y坐标。
    pub y: i32,
    /// 显示像素宽度。
    pub width: u32,
    /// 显示像素高度。
    pub height: u32,
    /// 可以是0、90、180、270，表示屏幕按时钟方向旋转的度数。
    pub rotation: f32,
    /// 输出设备的像素比例因子。
    pub scale_factor: f32,
    /// 显示刷新率。
    pub frequency: f32,
    /// 屏幕是否为主屏幕
    pub is_primary: bool,
}

impl Into<LddDisplayInfo> for DisplayInfo {
    fn into(self) -> LddDisplayInfo {
        LddDisplayInfo {
            name: self.name,
            id: self.id,
            x: self.x,
            y: self.y,
            width: self.width,
            height: self.height,
            rotation: self.rotation,
            scale_factor: self.scale_factor,
            frequency: self.frequency,
            is_primary: self.is_primary,
        }
    }
}
