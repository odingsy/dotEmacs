;;; `cfs--custom-set-fontsnames' 列表有3个子列表，第1个为英文字体列表，第2个为中文字体列表，
;;; 第3个列表中的字体用于显示不常用汉字，每一个字体列表中，*第一个* *有效并可用* 的字体将被使用。
;;; 将光标移动到上述列表中，按 `C-c C-c' 可以测试字体显示效果。另外，用户可以通过命令
;;; `cfs-insert-fontname’ 来选择一个 *可用* 字体，然后在当前光标处插入其字体名称。
(setq cfs--custom-set-fontnames
      '(
        ("Monaco" "PT Mono" "Courier" "Courier New" "Consolas" "DejaVu Sans Mono" "Droid Sans Mono" "PragmataPro" "Ubuntu Mono" "Liberation Mono" "MonacoB" "MonacoB2" "MonacoBSemi" "Droid Sans Mono Pro" "Inconsolata" "Source Code Pro" "Lucida Console" "Envy Code R" "Andale Mono" "Lucida Sans Typewriter" "monoOne" "Lucida Typewriter" "Panic Sans" "Hack" "Bitstream Vera Sans Mono" "HyperFont" "Ti92Pluspc" "Excalibur Monospace" "Menlof" "Cousine" "Fira Mono" "Lekton" "M+ 1mn" "BPmono" "Free Mono" "Anonymous Pro" "ProFont" "ProFontWindows" "Latin Modern Mono" "Code 2002" "ProggyCleanTT" "ProggyTinyTT")
        ("STKaiti" "华文仿宋" "STSong" "宋体" "Hiragino Sans GB" "SimSun" "微软雅黑" "Noto Sans S Chinese Regular" "Microsoft Yahei" "Microsoft_Yahei" "Ubuntu Mono" "文泉驿等宽微米黑" "文泉驿等宽正黑" "黑体" "文泉驿正黑" "文泉驿点阵正黑" "SimHei" "NSimSun" "FangSong" "KaiTi" "FangSong_GB2312" "KaiTi_GB2312" "LiSu" "YouYuan" "新宋体" "楷体_GB2312" "仿宋_GB2312" "幼圆" "隶书" "STXihei" "STZhongsong" "STFangsong" "FZShuTi" "FZYaoti" "STCaiyun" "STHupo" "STLiti" "STXingkai" "STXinwei" "方正姚体" "方正舒体" "方正粗圆_GBK" "华文中宋" "华文彩云" "华文新魏" "华文细黑" "华文行楷")
        ("HanaMinB" "SimSun-ExtB" "MingLiU-ExtB" "PMingLiU-ExtB" "MingLiU_HKSCS-ExtB")
        ))

;;; `cfs--custom-set-fontsizes' 中，所有元素的结构都类似：(英文字号 中文字号 EXT-B字体字号)
;;; 将光标移动到各个数字上，按 C-c C-c 查看光标处字号的对齐效果。
;;; 按 C-<up> 增大光标处字号，按 C-<down> 减小光标处字号。
(setq cfs--custom-set-fontsizes
      '((9    9.0  9.5 )
        (10   11.0 11.0)
        (11.5 12.5 12.5)
        (12.5 13.5 13.5)
        (14   15.0 15.0)
        (16   17.0 17.0)
        (18   18.0 18.0)
        (20   21.0 21.0)
        (22   23.0 23.0)
        (24   25.5 25.5)
        (26   27.0 27.0)
        (28   29.0 29.0)
        (30   32.0 32.0)
        (32   33.0 33.0)))
