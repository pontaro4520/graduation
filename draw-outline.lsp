;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　 
;;;  ドア外形とビューポートを作成する　　　　　　　　　　　　　　　   
;;;                                                                                                                          
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:draw-outline
       (
	/
        margin orikaeshi hone-h stt1 stt2 sust1 dt mitsuke mitsuke-back
	choban-t chiri-top chiri-side chiri-bottom chiri-front chiri-back band
	var-lst
	
	base-pt width height depth waku-typ door-typ
	blk-pt blkname
	front-pt-lst down-pt-lst side-pt-lst pt1 pt2 pt3 pt4 tmp
	snap layoutname-lst
	paper-rupt paper-ldpt model-rupt model-ldpt
       )

  ;;;外形作図のlspファイルをロード。
  ;;;（lspファイルの保存場所をあらかじめ「サポートの検索パス」と「信頼できる場所」に登録してください。）
  (load "draw-waku1tobira1.lsp")
  ;(load "draw-waku1.lsp")
  ;(load "draw-waku2.lsp")

  ;;;調整用変数群
  
  (setq margin 300.0)       ;正面、側面、見下げの距離
  (setq orikaeshi 20.0)     ;枠の折り返し
  (setq hone-h 25.0)        ;骨の高さ
  (setq stt1 1.6)           ;st板厚1
  (setq stt2 2.3)           ;st板厚2 
  (setq sust1 1.5)          ;sus板厚1  
  (setq dt 40.0)            ;ドア厚
  (setq mitsuke 25.0)       ;見付
  (setq mitsuke-back 40.0)  ;見付（山）
  (setq choban-t 3.0)       ;丁番の厚み
  (setq chiri-top 3.0)      ;上部のチリ  
  (setq chiri-side 4.0)     ;横部のチリ
  (setq chiri-bottom 8.0)   ;底部のチリ
  (setq chiri-front 2.0)    ;前のチリ
  (setq chiri-back 3.0)     ;後ろのチリ
  (setq band 5.0)           ;バンドの離れ
  
  (setq var-lst
	 (list
	   margin orikaeshi hone-h stt1 stt2
	   sust1 dt mitsuke mitsuke-back choban-t
	   chiri-top chiri-side chiri-bottom chiri-front chiri-back
	   band
	 )
  )

  ;;;作図する外形の基点
  (setq base-pt (getpoint "外形の基点を指定してください。"))
  
  ;;;寸法を取得
  (initget 1)
  (setq width (getreal "\nwidthの値を入力してください。"))
  (initget 1)
  (setq height (getreal "\nheightの値を入力してください。"))
  (initget 1)
  (setq depth (getreal "\ndepthの値を入力してください。"))

  ;;;枠タイプと扉タイプを取得
  (initget 1 "1 2 3 4")
  (setq waku-typ (getkword "枠タイプを選択してください。1:V枠 ST枠 / 2:V枠 AT枠（未実装） / 3:W枠 ST枠（未実装） / 4:W枠 AT枠（未実装） ⇒ "))
  (initget 1 "1 2")
  (setq door-typ (getkword "扉タイプを選択してください。1:フラッシュ / 2:框（未実装） ⇒ "))
  
  ;;;タイプごとの外形を作成
  (cond
    ((and
       (= "1" waku-typ)
       (= "1" door-typ)
     )

     ;;;ドア外形1
     (draw-waku1tobira1 width height depth base-pt var-lst)
    )
    ((and
       (= "1" waku-typ)
       (= "2" door-typ)
     )
       ;;;終了
  (print "未実装です。")
  (princ)
     
    )
    (T
     (print "未実装です。")
     (princ)
    )
  )



  ;;;終了
  (print "終了しました。")
  (princ)
)