;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　 
;;;  ドア外形1を作成する　　             　　　　　　　　　　　　　   
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun draw-waku1tobira1
       (
	width height depth base-pt var-lst
	
	/
	margin orikaeshi hone-h stt1 stt2 sust1 dt mitsuke mitsuke-back
	choban-t chiri-top chiri-side chiri-bottom chiri-front chiri-back band
        
  dw dh waku-1
	
	f-pt1 f-pt2 f-pt3 f-pt4
  f-frame-pt1 f-frame-pt2 f-frame-pt3 f-frame-pt4 f-frame-pt5 f-frame-pt6
  f-door-pt1 f-door-pt2 f-door-pt3 f-door-pt4        
	f-pl-lst f-fl-lst f-mm-lst
  f-pl-frame-lst1 f-fl-frame-lst1 f-mm-frame-lst1
  f-pl-frame-lst2 f-fl-frame-lst2 f-mm-frame-lst2
  f-pl-frame-lst3 f-fl-frame-lst3 f-mm-frame-lst3
  f-pl-door-lst1 f-fl-door-lst1 f-mm-door-lst1
		
	d-pt1 d-pt2 d-pt3 d-pt4
  d-frame-1-pt1 d-frame-1-pt2 d-frame-1-pt3 d-frame-1-pt4 d-frame-1-pt5 d-frame-1-pt6 d-frame-1-pt7 d-frame-1-pt8 d-frame-1-pt9 d-frame-1-pt10
  d-frame-1-pt11 d-frame-1-pt12 d-frame-1-pt13 d-frame-1-pt14 d-frame-1-pt15 d-frame-1-pt16 d-frame-1-pt17 d-frame-1-pt18 d-frame-1-pt19 d-frame-1-pt20
  d-frame-2-pt1 d-frame-2-pt2 d-frame-2-pt3 d-frame-2-pt4 d-frame-2-pt5 d-frame-2-pt6 d-frame-2-pt7 d-frame-2-pt8 d-frame-2-pt9 d-frame-2-pt10
  d-frame-2-pt11 d-frame-2-pt12 d-frame-2-pt13 d-frame-2-pt14 d-frame-2-pt15 d-frame-2-pt16 d-frame-2-pt17 d-frame-2-pt18 d-frame-2-pt19 d-frame-2-pt20
  d-door-pt1 d-door-pt2 d-door-pt3 d-door-pt4 d-door-pt5 d-door-pt6 d-door-pt7 d-door-pt8 d-door-pt9 d-door-pt10 d-door-pt11 d-door-pt12

  d-pl-lst d-fl-lst d-mm-lst
  d-pl-frame-1-lst1 d-fl-frame-1-lst1 d-mm-frame-1-lst1
  d-pl-frame-1-lst2 d-fl-frame-1-lst2 d-mm-frame-1-lst2
  d-pl-frame-2-lst1 d-fl-frame-2-lst1 d-mm-frame-2-lst1
  d-pl-frame-2-lst2 d-fl-frame-2-lst2 d-mm-frame-2-lst2
  d-pl-door-lst1 d-fl-door-lst1 d-mm-door-lst1
  d-pl-door-lst2 d-fl-door-lst2 d-mm-door-lst2
  
  s-pt1 s-pt2 s-pt3 s-pt4
  s-frame-1-pt1 s-frame-1-pt2 s-frame-1-pt3 s-frame-1-pt4 s-frame-1-pt5 s-frame-1-pt6 s-frame-1-pt7 s-frame-1-pt8 s-frame-1-pt9 s-frame-1-pt10
  s-frame-1-pt11 s-frame-1-pt12 s-frame-1-pt13 s-frame-1-pt14 s-frame-1-pt15 s-frame-1-pt16
  s-pl-lst s-fl-lst s-mm-lst  
  s-pl-frame-1-lst1 s-fl-frame-1-lst1 s-mm-frame-1-lst1  
  s-pl-frame-1-lst2 s-fl-frame-1-lst2 s-mm-frame-1-lst2   
  s-pl-door-lst1 s-fl-door-lst1 s-mm-door-lst1
  s-pl-door-lst2 s-fl-door-lst2 s-mm-door-lst2           
	
	tmp1 tmp2 tmp-lst tmp-pt-lst tmp-fillet-lst tmp-measurement-lst
	now-layer now-snap n stpt enpt line-ss first-filstname
	index radius ss1 ss2 pedit-ss tmp-figname

	dim-pt1 dim-pt2 dim-pt3 dim-scale
	shiftcopy-ss anycopy-ss-lst shift layername copymethod
       )
  
  ;;;調整用変数
  (setq margin (nth 0 var-lst))       ;正面、側面、見下げの距離
  (setq orikaeshi (nth 1 var-lst))     ;枠の折り返し
  (setq hone-h (nth 2 var-lst))        ;骨の高さ
  (setq stt1 (nth 3 var-lst))           ;st板厚1
  (setq stt2 (nth 4 var-lst))           ;st板厚2 
  (setq sust1 (nth 5 var-lst))          ;sus板厚1  
  (setq dt (nth 6 var-lst))            ;ドア厚
  (setq mitsuke (nth 7 var-lst))       ;見付
  (setq mitsuke-back (nth 8 var-lst))  ;見付（山）
  (setq choban-t (nth 9 var-lst))       ;丁番の厚み
  (setq chiri-top (nth 10 var-lst))      ;上部のチリ  
  (setq chiri-side (nth 11 var-lst))     ;横部のチリ
  (setq chiri-bottom (nth 12 var-lst))   ;底部のチリ
  (setq chiri-front (nth 13 var-lst))    ;前のチリ
  (setq chiri-back (nth 14 var-lst))     ;後ろのチリ
  (setq band (nth 15 var-lst))           ;バンドの離れ
  
    ;;;WHDから導き出される変数群
  (setq dw (- width (+ mitsuke mitsuke choban-t chiri-side)))
  (setq dh (- height (+ mitsuke chiri-top chiri-bottom)))
  
  ;;;枠タイプ固有の変数群
  (setq waku-1 (+ dt chiri-front chiri-back))

  ;;;正面図の頂点座標リスト（エリア）
  (setq f-pt1 base-pt)
  (setq f-pt2 (list (+ (car base-pt) width) (cadr base-pt)))
  (setq f-pt3 (list (+ (car base-pt) width) (+ (cadr base-pt) height)))
  (setq f-pt4 (list (car base-pt) (+ (cadr base-pt) height)))
  
  (setq f-pl-lst
	 (list f-pt1 f-pt2 f-pt3 f-pt4 f-pt1))
  
  ;;;正面図の頂点座標リスト（枠）
  (setq f-frame-pt1 (list (+ (car base-pt) mitsuke) (cadr base-pt)))
  (setq f-frame-pt2(list (+ (car base-pt) mitsuke) (+ (cadr base-pt) height)))
  (setq f-frame-pt3 (list (- (+ (car base-pt) width) mitsuke) (cadr base-pt)))
  (setq f-frame-pt4 (list (- (+ (car base-pt) width) mitsuke) (+ (cadr base-pt) height)))
  (setq f-frame-pt5 (list (+ (car base-pt) mitsuke) (- (+ (cadr base-pt) height) mitsuke)))
  (setq f-frame-pt6 (list (- (+ (car base-pt) width) mitsuke) (- (+ (cadr base-pt) height) mitsuke)))
  
  (setq f-pl-frame-lst1
	 (list f-pt1 f-frame-pt1 f-frame-pt2 f-pt4 f-pt1 ))
  
  (setq f-pl-frame-lst2
	 (list f-frame-pt3 f-pt2 f-pt3 f-frame-pt4 f-frame-pt3 ))
  
  (setq f-pl-frame-lst3
	 (list f-frame-pt5 f-frame-pt6 f-frame-pt4 f-frame-pt2 f-frame-pt5 ))    
  
    ;;;正面図の頂点座標リスト（ドア）
  (setq f-door-pt1 (list (+ (car base-pt) mitsuke choban-t) (+ (cadr base-pt) chiri-bottom))) 
  (setq f-door-pt2 (list (+ (car base-pt) mitsuke choban-t dw) (+ (cadr base-pt) chiri-bottom))) 
  (setq f-door-pt3 (list (+ (car base-pt) mitsuke choban-t dw) (+ (cadr base-pt) chiri-bottom dh))) 
  (setq f-door-pt4 (list (+ (car base-pt) mitsuke choban-t) (+ (cadr base-pt) chiri-bottom dh))) 
 
  (setq f-pl-door-lst1
	 (list f-door-pt1 f-door-pt2 f-door-pt3 f-door-pt4 f-door-pt1 ))
     
  ;;;正面図頂点の番号とフィレット半径の連想リスト（2点目の番号は1）
  ;;;（2点目の番号は1。1点目の0番はNG。1点目をフィレットしたい場合は最後の点を指定）
  (setq f-fl-lst nil ) 
  (setq f-fl-frame-lst1 nil )
  (setq f-fl-frame-lst2 nil )
  (setq f-fl-frame-lst3 nil )
  (setq f-fl-door-lst1 nil )
  
  ;;;正面図寸法線の寸法計測位置、表示位置、注釈尺度
  (setq f-mm-lst 
	 (list
	   (list f-pt1 f-pt2 (list (car f-pt1) (- (cadr f-pt1) 100)) "1:20")
	   (list f-pt4 f-pt1 (list (- (car f-pt4) 100) (cadr f-pt4)) "1:20")
	 )
  )
  (setq f-mm-frame-lst1 nil )
  (setq f-mm-frame-lst2 nil )
  (setq f-mm-frame-lst3 nil )
  (setq f-mm-door-lst1 nil ) 

  ;;;見下げ図の頂点座標リスト（エリア）
  (setq d-pt1 (list (car base-pt) (+ (cadr base-pt) height margin)))
  (setq d-pt2 (list (+ (car base-pt) width) (+ (cadr base-pt) height margin)))
  (setq d-pt3 (list (+ (car base-pt) width) (+ (cadr base-pt) height margin depth)))
  (setq d-pt4 (list (car base-pt) (+ (cadr base-pt) height margin depth)))
  
  (setq d-pl-lst (list d-pt1 d-pt2 d-pt3 d-pt4 d-pt1))
  
  ;;;見下げ図の頂点座標リスト（枠）
  
  (setq d-frame-1-pt1 (list (car base-pt) (- (+ (cadr base-pt) height margin depth) orikaeshi)))
  (setq d-frame-1-pt2 (list (car base-pt) (+ (cadr base-pt) height margin depth)))
  (setq d-frame-1-pt3 (list (+ (car base-pt) mitsuke-back) (+ (cadr base-pt) height margin depth)))
  (setq d-frame-1-pt4 (list (+ (car base-pt) mitsuke-back) (- (+ (cadr base-pt) height margin depth) (- depth waku-1))))
  (setq d-frame-1-pt5 (list (+ (car base-pt) mitsuke) (- (+ (cadr base-pt) height margin depth) (- depth waku-1)))) 
  (setq d-frame-1-pt6 (list (+ (car base-pt) mitsuke) (+ (cadr base-pt) height margin) )) 
  (setq d-frame-1-pt7 (list (car base-pt) (+ (cadr base-pt) height margin)))
  (setq d-frame-1-pt8 (list (car base-pt) (+ (cadr base-pt) height margin orikaeshi)))
  (setq d-frame-1-pt9 (list (+ (car base-pt) stt1) (+ (cadr base-pt) height margin orikaeshi)))
  (setq d-frame-1-pt10 (list (+ (car base-pt) stt1) (+ (cadr base-pt) height margin stt1)))
  (setq d-frame-1-pt11 (list (- (+(car base-pt) mitsuke) stt1) (+ (cadr base-pt) height margin stt1)))
  (setq d-frame-1-pt12 (list (- (+(car base-pt) mitsuke) stt1) (+ (cadr base-pt) height margin stt1 waku-1)))
  (setq d-frame-1-pt13 (list (- (+(car base-pt) mitsuke-back) stt1) (+ (cadr base-pt) height margin stt1 waku-1)))
  (setq d-frame-1-pt14 (list (- (+(car base-pt) mitsuke-back) stt1) (- (+ (cadr base-pt) height margin depth) stt1)))
  (setq d-frame-1-pt15 (list (+(car base-pt) stt1) (- (+ (cadr base-pt) height margin depth) stt1)))
  (setq d-frame-1-pt16 (list (+(car base-pt) stt1) (- (+ (cadr base-pt) height margin depth) orikaeshi)))
  (setq d-frame-1-pt17 (list (+ (car base-pt) stt1) (+ (cadr base-pt) height margin stt1 band)))
  (setq d-frame-1-pt18 (list (+ (car base-pt) stt1 stt2) (+ (cadr base-pt) height margin stt1 band)))
  (setq d-frame-1-pt19 (list (+ (car base-pt) stt1 stt2) (- (+ (cadr base-pt) height margin depth) stt1 band)))
  (setq d-frame-1-pt20 (list (+ (car base-pt) stt1) (- (+ (cadr base-pt) height margin depth) stt1 band)))
  
  (setq d-frame-2-pt1 (list (+ (car base-pt) width) (- (+ (cadr base-pt) height margin depth) orikaeshi)))
  (setq d-frame-2-pt2 (list (+ (car base-pt) width) (+ (cadr base-pt) height margin depth)))
  (setq d-frame-2-pt3 (list (- (+ (car base-pt) width) mitsuke-back) (+ (cadr base-pt) height margin depth)))
  (setq d-frame-2-pt4 (list (- (+ (car base-pt) width) mitsuke-back) (- (+ (cadr base-pt) height margin depth) (- depth waku-1))))
  (setq d-frame-2-pt5 (list (- (+ (car base-pt) width) mitsuke) (+ (cadr base-pt) height margin waku-1)))
  (setq d-frame-2-pt6 (list (- (+ (car base-pt) width) mitsuke) (+ (cadr base-pt) height margin)))
  (setq d-frame-2-pt7 (list (+ (car base-pt) width) (+ (cadr base-pt) height margin)))
  (setq d-frame-2-pt8 (list (+ (car base-pt) width) (+ (cadr base-pt) height margin orikaeshi)))
  (setq d-frame-2-pt9 (list (- (+ (car base-pt) width) stt1) (+ (cadr base-pt) height margin orikaeshi)))
  (setq d-frame-2-pt10 (list (- (+ (car base-pt) width) stt1) (+ (cadr base-pt) height margin stt1)))
  (setq d-frame-2-pt11 (list (- (+ (car base-pt) width stt1) mitsuke) (+ (cadr base-pt) height margin stt1)))
  (setq d-frame-2-pt12 (list (- (+ (car base-pt) width stt1) mitsuke) (+ (cadr base-pt) height margin waku-1 stt1)))
  (setq d-frame-2-pt13 (list (- (+ (car base-pt) width stt1) mitsuke-back) (+ (cadr base-pt) height margin waku-1 stt1)))
  (setq d-frame-2-pt14 (list (- (+ (car base-pt) width stt1) mitsuke-back) (- (+ (cadr base-pt) height margin depth) stt1)))
  (setq d-frame-2-pt15 (list (- (+ (car base-pt) width) stt1) (- (+ (cadr base-pt) height margin depth) stt1)))
  (setq d-frame-2-pt16 (list (- (+ (car base-pt) width) stt1) (- (+ (cadr base-pt) height margin depth) orikaeshi)))
  (setq d-frame-2-pt17 (list (- (+ (car base-pt) width) stt1) (+ (cadr base-pt) height margin stt1 band)))
  (setq d-frame-2-pt18 (list (- (+ (car base-pt) width) stt1 stt2) (+ (cadr base-pt) height margin stt1 band)))
  (setq d-frame-2-pt19 (list (- (+ (car base-pt) width) stt1 stt2) (- (+ (cadr base-pt) height margin depth) stt1 band)))
  (setq d-frame-2-pt20 (list (- (+ (car base-pt) width) stt1) (- (+ (cadr base-pt) height margin depth) stt1 band)))
  
  (setq d-pl-frame-1-lst1 (list d-frame-1-pt1 d-frame-1-pt2 d-frame-1-pt3 d-frame-1-pt4 d-frame-1-pt5 d-frame-1-pt6 d-frame-1-pt7 d-frame-1-pt8 d-frame-1-pt9 d-frame-1-pt10 d-frame-1-pt11 d-frame-1-pt12 d-frame-1-pt13 d-frame-1-pt14 d-frame-1-pt15 d-frame-1-pt16 d-frame-1-pt1)) 
  (setq d-pl-frame-1-lst2 (list d-frame-1-pt17 d-frame-1-pt18 d-frame-1-pt19 d-frame-1-pt20 d-frame-1-pt17)) 
  (setq d-pl-frame-2-lst1 (list d-frame-2-pt1 d-frame-2-pt2 d-frame-2-pt3 d-frame-2-pt4 d-frame-2-pt5 d-frame-2-pt6 d-frame-2-pt7 d-frame-2-pt8 d-frame-2-pt9 d-frame-2-pt10 d-frame-2-pt11 d-frame-2-pt12 d-frame-2-pt13 d-frame-2-pt14 d-frame-2-pt15 d-frame-2-pt16 d-frame-2-pt1)) 
  (setq d-pl-frame-2-lst2 (list d-frame-2-pt17 d-frame-2-pt18 d-frame-2-pt19 d-frame-2-pt20 d-frame-2-pt17))  
   
    20;見下げの頂点座標リスト（ドア）
  (setq d-door-pt1 (list (+ (car base-pt) mitsuke choban-t) (+ (cadr base-pt) height margin chiri-front)))
  (setq d-door-pt2 (list (+ (car base-pt) mitsuke choban-t dw) (+ (cadr base-pt) height margin chiri-front)))
  (setq d-door-pt3 (list (+ (car base-pt) mitsuke choban-t dw) (+ (cadr base-pt) height margin chiri-front dt)))
  (setq d-door-pt4 (list (+ (car base-pt) mitsuke choban-t) (+ (cadr base-pt) height margin chiri-front dt)))   
  (setq d-door-pt5 (list (+ (car base-pt) mitsuke choban-t) (+ (cadr base-pt) height margin chiri-front (/ dt 2)))) 
  (setq d-door-pt6 (list (+ (car base-pt) mitsuke choban-t dw) (+ (cadr base-pt) height margin chiri-front  (/ dt 2)))) 
  (setq d-door-pt7 (list (+ (car base-pt) mitsuke choban-t stt1) (+ (cadr base-pt) height margin chiri-front stt1))) 
  (setq d-door-pt8 (list (- (+ (car base-pt) mitsuke choban-t dw) stt1) (+ (cadr base-pt) height margin chiri-front stt1))) 
  (setq d-door-pt9 (list (- (+ (car base-pt) mitsuke choban-t dw) stt1) (- (+ (cadr base-pt) height margin chiri-front dt) stt1))) 
  (setq d-door-pt10 (list (+ (car base-pt) mitsuke choban-t stt1) (- (+ (cadr base-pt) height margin chiri-front dt) stt1))) 
  (setq d-door-pt11 (list (+ (car base-pt) mitsuke choban-t stt1) (+ (cadr base-pt) height margin chiri-front  (/ dt 2)))) 
  (setq d-door-pt12 (list (- (+ (car base-pt) mitsuke choban-t dw) stt1) (+ (cadr base-pt) height margin chiri-front  (/ dt 2))))  

  (setq d-pl-door-lst1 (list d-door-pt5 d-door-pt1 d-door-pt2 d-door-pt6 d-door-pt12 d-door-pt8 d-door-pt7 d-door-pt11 d-door-pt5)) 
  (setq d-pl-door-lst2 (list d-door-pt5 d-door-pt4 d-door-pt3 d-door-pt6 d-door-pt12 d-door-pt9 d-door-pt10 d-door-pt11 d-door-pt5)) 


  ;;;見下げ図頂点の番号とフィレット半径の連想リスト
  ;;;（2点目の番号は1。1点目の0番はNG。1点目をフィレットしたい場合は最後の点を指定）
  (setq d-fl-lst nil ) 
  (setq d-fl-frame-1-lst1  (list
	   (cons 1 stt1)
	   (cons 2 stt1)
	   (cons 3 stt1)
	   (cons 5 stt1)
	   (cons 6 stt1) 
	   (cons 11 stt1)                             
	 ) )
  (setq d-fl-frame-1-lst2 nil )
  (setq d-fl-frame-2-lst1 (list
	   (cons 1 stt1)
	   (cons 2 stt1)
	   (cons 3 stt1)
	   (cons 5 stt1)
	   (cons 6 stt1) 
	   (cons 11 stt1)                             
	 ) )
  (setq d-fl-frame-2-lst2 nil )
  (setq d-fl-door-lst1 (list
	   (cons 1 stt1)
	   (cons 2 stt1)) )
  (setq d-fl-door-lst2 (list
	   (cons 1 stt1)
	   (cons 2 stt1)) )
  
  ;;;見下げ図寸法線の寸法計測位置、表示位置、注釈尺度
  (setq d-mm-lst 
	 (list
	   (list d-pt3 d-pt4 (list (car d-pt1) (+ (cadr d-pt3) 100)) "1:20")
	   (list d-pt4 d-pt1 (list (- (car d-pt4) 100) (cadr d-pt4)) "1:20")
	 )
  )
  (setq d-mm-frame-1-lst1 nil )
  (setq d-mm-frame-1-lst2 nil )
  (setq d-mm-frame-2-lst1 nil )
  (setq d-mm-frame-2-lst2 nil ) 
  (setq d-mm-door-lst1 nil )
  (setq d-mm-door-lst2 nil )  

  ;;;側面図の頂点座標リスト（エリア）
  (setq s-pt1 (list (+ (car base-pt) width margin) (cadr base-pt)))
  (setq s-pt2 (list (+ (car base-pt) width margin depth) (cadr base-pt)))
  (setq s-pt3 (list (+ (car base-pt) width margin depth) (+ (cadr base-pt) height)))
  (setq s-pt4 (list (+ (car base-pt) width margin) (+ (cadr base-pt) height)))
  
  (setq s-pl-lst (list s-pt1 s-pt2 s-pt3 s-pt4 s-pt1))
  
  ;;;側面図の頂点座標リスト（枠）

  (setq s-frame-1-pt1 (list (- (+ (car base-pt) width margin depth) orikaeshi) (+ (cadr base-pt) height)))
  (setq s-frame-1-pt2 (list (+ (car base-pt) width margin depth) (+ (cadr base-pt) height)))
  (setq s-frame-1-pt3 (list (+ (car base-pt) width margin depth) (- (+ (cadr base-pt) height) mitsuke-back)))
  (setq s-frame-1-pt4 (list (+ (car base-pt) width margin waku-1) (- (+ (cadr base-pt) height) mitsuke-back)))
  (setq s-frame-1-pt5 (list (+ (car base-pt) width margin waku-1) (- (+ (cadr base-pt) height) mitsuke)))
  (setq s-frame-1-pt6 (list (+ (car base-pt) width margin) (- (+ (cadr base-pt) height) mitsuke)))
  (setq s-frame-1-pt7 (list (+ (car base-pt) width margin) (+ (cadr base-pt) height)))
  (setq s-frame-1-pt8 (list (+ (car base-pt) width margin orikaeshi) (+ (cadr base-pt) height)))
  (setq s-frame-1-pt9 (list (+ (car base-pt) width margin orikaeshi) (- (+ (cadr base-pt) height) stt1)))
  
  (setq s-frame-1-pt10 (list (+ (car base-pt) width margin stt1) (- (+ (cadr base-pt) height) stt1)))
  (setq s-frame-1-pt11 (list (+ (car base-pt) width margin stt1) (- (+ (cadr base-pt) height stt1) mitsuke)))
  (setq s-frame-1-pt12 (list (+ (car base-pt) width margin waku-1 stt1) (- (+ (cadr base-pt) height stt1) mitsuke)))
  (setq s-frame-1-pt13 (list (+ (car base-pt) width margin waku-1 stt1) (- (+ (cadr base-pt) height stt1) mitsuke-back)))
  (setq s-frame-1-pt14 (list (- (+ (car base-pt) width margin depth) stt1) (- (+ (cadr base-pt) height stt1) mitsuke-back)))
  (setq s-frame-1-pt15 (list (- (+ (car base-pt) width margin depth) stt1) (- (+ (cadr base-pt) height) stt1)))
  (setq s-frame-1-pt16 (list (- (+ (car base-pt) width margin depth) orikaeshi) (- (+ (cadr base-pt) height) stt1)))
  (setq s-frame-1-pt17 (list (+ (car base-pt) width margin stt1 band) (- (+ (cadr base-pt) height) stt1)))
  (setq s-frame-1-pt18 (list (+ (car base-pt) width margin stt1 band) (- (+ (cadr base-pt) height) stt1 stt1)))
  (setq s-frame-1-pt19 (list (- (+ (car base-pt) width margin depth) stt1 band) (- (+ (cadr base-pt) height) stt1 stt1)))
  (setq s-frame-1-pt20 (list (- (+ (car base-pt) width margin depth) stt1 band) (- (+ (cadr base-pt) height) stt1)))

  (setq s-pl-frame-1-lst1 (list s-frame-1-pt1 s-frame-1-pt2 s-frame-1-pt3 s-frame-1-pt4 s-frame-1-pt5 s-frame-1-pt6 s-frame-1-pt7 s-frame-1-pt8 s-frame-1-pt9 s-frame-1-pt10 s-frame-1-pt11 s-frame-1-pt12 s-frame-1-pt13 s-frame-1-pt14 s-frame-1-pt15 s-frame-1-pt16 s-frame-1-pt1)) 
  (setq s-pl-frame-1-lst2 (list s-frame-1-pt17 s-frame-1-pt18 s-frame-1-pt19 s-frame-1-pt20 s-frame-1-pt17)) 
  
  ;;;側面図の頂点座標リスト（ドア）
  (setq s-door-pt1 (list (+ (car base-pt) width margin chiri-front) (+ (cadr base-pt) chiri-bottom dh)))
  (setq s-door-pt2 (list (+ (car base-pt) width margin chiri-front) (+ (cadr base-pt) chiri-bottom)))
  (setq s-door-pt3 (list (+ (car base-pt) width margin chiri-front dt) (+ (cadr base-pt) chiri-bottom)))
  (setq s-door-pt4 (list (+ (car base-pt) width margin chiri-front dt) (+ (cadr base-pt) chiri-bottom dh)))
  (setq s-door-pt5 (list (+ (car base-pt) width margin chiri-front (/ dt 2)) (+ (cadr base-pt) chiri-bottom dh)))
  (setq s-door-pt6 (list (+ (car base-pt) width margin chiri-front (/ dt 2)) (+ (cadr base-pt) chiri-bottom)))
  (setq s-door-pt7 (list (+ (car base-pt) width margin chiri-front stt1) (- (+ (cadr base-pt) chiri-bottom dh) stt1)))
  (setq s-door-pt8 (list (+ (car base-pt) width margin chiri-front stt1) (+ (cadr base-pt) chiri-bottom stt1)))
  (setq s-door-pt9 (list (- (+ (car base-pt) width margin chiri-front dt) stt1) (+ (cadr base-pt) chiri-bottom stt1)))
  (setq s-door-pt10 (list (- (+ (car base-pt) width margin chiri-front dt) stt1) (- (+ (cadr base-pt) chiri-bottom dh) stt1)))
  (setq s-door-pt11 (list (+ (car base-pt) width margin chiri-front (/ dt 2)) (- (+ (cadr base-pt) chiri-bottom dh) stt1)))
  (setq s-door-pt12 (list (+ (car base-pt) width margin chiri-front (/ dt 2)) (+ (cadr base-pt) chiri-bottom stt1)))

  (setq s-pl-door-lst1 (list s-door-pt5 s-door-pt1 s-door-pt2 s-door-pt6 s-door-pt12 s-door-pt8 s-door-pt7 s-door-pt11 s-door-pt5)) 
  (setq s-pl-door-lst2 (list s-door-pt5 s-door-pt4 s-door-pt3 s-door-pt6 s-door-pt12 s-door-pt9 s-door-pt10 s-door-pt11 s-door-pt5)) 

  ;;;側面図頂点の番号とフィレット半径の連想リスト
  ;;;（2点目の番号は1。1点目の0番はNG。1点目をフィレットしたい場合は最後の点を指定）
  (setq s-fl-lst nil ) 
  (setq s-fl-frame-1-lst1  (list
	   (cons 1 stt1)
	   (cons 2 stt1)
	   (cons 3 stt1)
	   (cons 5 stt1)
	   (cons 6 stt1) 
	   (cons 11 stt1)                             
	 ) )
  (setq s-fl-frame-1-lst2 nil )  
    (setq s-fl-door-lst1 (list
	   (cons 1 stt1)
	   (cons 2 stt1)) )
  (setq s-fl-door-lst2 (list
	   (cons 1 stt1)
	   (cons 2 stt1)) )
  

  ;;;側面図寸法線の寸法計測位置、表示位置、注釈尺度
  (setq s-mm-lst 
	 (list
	   (list s-pt1 s-pt2 (list (car s-pt1) (- (cadr s-pt1) 100)) "1:20")
	   (list s-pt2 s-pt3 (list (+ (car s-pt2) 100) (cadr s-pt2)) "1:20")
	 )  )
  (setq s-mm-frame-1-lst1 nil )
  (setq s-mm-frame-1-lst2 nil ) 
  (setq s-mm-door-lst1 nil )
  (setq s-mm-door-lst2 nil )  
  

  ;;;頂点座標リスト、フィレットリスト、寸法線リスト、コピー方法、シフト量、画層をセットでリスト化する
  (setq tmp-lst
	 (list
	   (list f-pl-lst f-fl-lst f-mm-lst nil nil "Guideline")
     (list f-pl-frame-lst1 f-fl-frame-lst1 f-mm-frame-lst1 nil nil "Gaikei")
     (list f-pl-frame-lst2 f-fl-frame-lst2 f-mm-frame-lst2 nil nil "Gaikei")
     (list f-pl-frame-lst3 f-fl-frame-lst3 f-mm-frame-lst3 nil nil "Gaikei")
     (list f-pl-door-lst1 f-fl-door-lst1 f-mm-door-lst1 nil nil "Gaikei")
     
     (list d-pl-lst d-fl-lst d-mm-lst nil nil "Guideline")   
     (list d-pl-frame-1-lst1 d-fl-frame-1-lst1 d-mm-frame-1-lst1 
           ;"any" 
           nil nil "Gaikei")   
     (list d-pl-frame-1-lst2 d-fl-frame-1-lst2 d-mm-frame-1-lst2 nil nil "Gaikei")   
     (list d-pl-frame-2-lst1 d-fl-frame-2-lst1 d-mm-frame-2-lst1 
           ;"any" 
           nil nil "Gaikei")   
     (list d-pl-frame-2-lst2 d-fl-frame-2-lst2 d-mm-frame-2-lst2 nil nil "Gaikei")   
     (list d-pl-door-lst1 d-fl-door-lst1 d-mm-door-lst1 
          ; "any"
          nil nil "Gaikei")   
     (list d-pl-door-lst2 d-fl-door-lst2 d-mm-door-lst2 
           ;"any" 
           nil nil "Gaikei")       
    
     (list s-pl-lst s-fl-lst s-mm-lst nil nil "Guideline")   
     (list s-pl-frame-1-lst1 s-fl-frame-1-lst1 s-mm-frame-1-lst1 
           ;"any" 
           nil nil "Gaikei")   
     (list s-pl-frame-1-lst2 s-fl-frame-1-lst2 s-mm-frame-1-lst2 nil nil "Gaikei")    
     (list s-pl-door-lst1 s-fl-door-lst1 s-mm-door-lst1 
           ;"any" 
           nil nil "Gaikei")   
     (list s-pl-door-lst2 s-fl-door-lst2 s-mm-door-lst2 
           ;"any" 
           nil nil "Gaikei")         
    
	  ;  (list down-pt-lst down-fillet-lst down-measurement-lst "shift" (list 2000 2000))
	  ;  (list side-pt-lst side-fillet-lst side-measurement-lst "any" nil)
	 )
  )
  
  ;;;スナップをオフにする
  (setq now-snap (getvar "osmode"))
  (setvar "osmode" 0)

  ;;;コピー用の選択セットを初期化
  (setq shiftcopy-ss (ssadd))
  (setq anycopy-ss (ssadd))

  ;;;画層を作成
  (setq now-layer (getvar "clayer"))
  (command-s
    "layer" "n" "Guideline"    ;Guideline 画層を作成
    "s" "Guideline"            ;現在の画層に設定
    "c" "t" "255,127,0" ""     ;色変更
    ""
  )
  (command-s
    "layer" "n" "Gaikei" ;Gaikei 画層を作成
    "s" "Gaikei" ;現在の画層に設定
    "")

  ;;;各外形図を作成
  (foreach tmp1 tmp-lst

    ;;;各リスト、値を取得
    (setq tmp-pt-lst (nth 0 tmp1))
    (setq tmp-fillet-lst (nth 1 tmp1))
    (setq tmp-measurement-lst (nth 2 tmp1))
    (setq copymethod (nth 3 tmp1))
    (setq shift (nth 4 tmp1))
    (setq layername (nth 5 tmp1))

    ;;;線分の選択セットを初期化
    (setq line-ss (ssadd))
    
    ;;;作図する層を変更する
    (if layername
      (setvar "clayer" layername)
    )

    ;;;外形の辺を線分で作図
    (setq n 0)
    (repeat (length tmp-pt-lst)
      (setq stpt (nth n tmp-pt-lst))
      (setq enpt (nth (1+ n) tmp-pt-lst))
      (command "line" stpt enpt "")
      (ssadd (entlast) line-ss)
      (setq n (1+ n))
    )

    ;;;最初に作成した線分は図形名を取得しておく
    (setq first-figname (ssname line-ss 0))

    ;;;対象の頂点にフィレットをかける
    (foreach tmp2 tmp-fillet-lst
      (setq index (car tmp2))
      (setq radius (cdr tmp2))
      (setq ss1 (ssadd))
      (setq ss2 (ssadd))
      (ssadd (ssname line-ss (1- index)) ss1)
      (ssadd (ssname line-ss index) ss2)
      (command "fillet" ss1 "r" radius ss2)
    )

    ;;;作成した線分と円弧を専用の選択セットに追加
    (setq pedit-ss (ssadd))
    (setq tmp-figname first-figname)
    (while tmp-figname
      (ssadd tmp-figname pedit-ss)
      (setq tmp-figname (entnext tmp-figname))
    )

    ;;;線分と円弧を結合して1つのポリラインにする
    (command "pedit" "m" pedit-ss "" "y" "j" "" nil)

    ;;;作成したポリラインをコピー用の選択セットに追加
    (cond ((= "shift" copymethod)
	   (ssadd (entlast) shiftcopy-ss)
	  )
	  ((= "any" copymethod)
	   (ssadd (entlast) anycopy-ss)
	  )
    )

    ;;;寸法線を作成する（寸法スタイルは現在の設定に従う）
    (foreach tmp1 tmp-measurement-lst
      (setq dim-pt1 (nth 0 tmp1))
      (setq dim-pt2 (nth 1 tmp1))
      (setq dim-pt3 (nth 2 tmp1))
      (setq dim-scale (nth 3 tmp1))
      (setvar "cannoscale" dim-scale)
      (command "dimlinear" dim-pt1 dim-pt2 dim-pt3)

      ;;;作成した寸法線をコピー用の選択セットに追加
      (cond ((= "shift" copymethod)
	    (ssadd (entlast) shiftcopy-ss)
	    )
	    ((= "any" copymethod)
	    (ssadd (entlast) anycopy-ss)
	    )
	    (T
	    )
      )
    )

    ;;;任意コピーの図形を選択セットごとにリスト化
    (if (< 0 (sslength anycopy-ss))
      (progn
	(setq anycopy-ss-lst (append anycopy-ss-lst (list anycopy-ss)))
	(setq anycopy-ss (ssadd))
      )
    )

    ;;;尺度を1:1にする
    (setvar "cannoscale" "1:1")

    ;;;一定値シフトさせた場所にポリラインと寸法線をコピーする
    (if (and (< 0 (sslength shiftcopy-ss)) shift)
      (progn
	(command "copy" shiftcopy-ss "" (list 0 0) shift)
	(setq shiftcopy-ss (ssadd))
      )
    )
    
    ;;;現在層を戻す
    (if (/= (getvar "clayer") now-layer)
      (setvar "clayer" now-layer)
    )   
  )

  ;;;任意の場所に指定のポリラインと寸法線をコピーする
  (if anycopy-ss-lst
    (progn
      
      ;;;スナップを戻す
      (setvar "osmode" now-snap)

      (foreach anycopy-ss anycopy-ss-lst
	(command "copy" anycopy-ss "" pause pause)
      )

      ;;;スナップをオフにする
      (setvar "osmode" 0)
    )
  )
  
  ;;;現在層を戻す
  (setvar "clayer" now-layer)
  
  ;;;スナップを戻す
  (setvar "osmode" now-snap)
)


