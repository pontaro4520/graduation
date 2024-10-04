;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@ 
;;;  �h�A�O�`1���쐬����@�@             �@�@�@�@�@�@�@�@�@�@�@�@�@   
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
  
  ;;;�����p�ϐ�
  (setq margin (nth 0 var-lst))       ;���ʁA���ʁA�������̋���
  (setq orikaeshi (nth 1 var-lst))     ;�g�̐܂�Ԃ�
  (setq hone-h (nth 2 var-lst))        ;���̍���
  (setq stt1 (nth 3 var-lst))           ;st��1
  (setq stt2 (nth 4 var-lst))           ;st��2 
  (setq sust1 (nth 5 var-lst))          ;sus��1  
  (setq dt (nth 6 var-lst))            ;�h�A��
  (setq mitsuke (nth 7 var-lst))       ;���t
  (setq mitsuke-back (nth 8 var-lst))  ;���t�i�R�j
  (setq choban-t (nth 9 var-lst))       ;���Ԃ̌���
  (setq chiri-top (nth 10 var-lst))      ;�㕔�̃`��  
  (setq chiri-side (nth 11 var-lst))     ;�����̃`��
  (setq chiri-bottom (nth 12 var-lst))   ;�ꕔ�̃`��
  (setq chiri-front (nth 13 var-lst))    ;�O�̃`��
  (setq chiri-back (nth 14 var-lst))     ;���̃`��
  (setq band (nth 15 var-lst))           ;�o���h�̗���
  
    ;;;WHD���瓱���o�����ϐ��Q
  (setq dw (- width (+ mitsuke mitsuke choban-t chiri-side)))
  (setq dh (- height (+ mitsuke chiri-top chiri-bottom)))
  
  ;;;�g�^�C�v�ŗL�̕ϐ��Q
  (setq waku-1 (+ dt chiri-front chiri-back))

  ;;;���ʐ}�̒��_���W���X�g�i�G���A�j
  (setq f-pt1 base-pt)
  (setq f-pt2 (list (+ (car base-pt) width) (cadr base-pt)))
  (setq f-pt3 (list (+ (car base-pt) width) (+ (cadr base-pt) height)))
  (setq f-pt4 (list (car base-pt) (+ (cadr base-pt) height)))
  
  (setq f-pl-lst
	 (list f-pt1 f-pt2 f-pt3 f-pt4 f-pt1))
  
  ;;;���ʐ}�̒��_���W���X�g�i�g�j
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
  
    ;;;���ʐ}�̒��_���W���X�g�i�h�A�j
  (setq f-door-pt1 (list (+ (car base-pt) mitsuke choban-t) (+ (cadr base-pt) chiri-bottom))) 
  (setq f-door-pt2 (list (+ (car base-pt) mitsuke choban-t dw) (+ (cadr base-pt) chiri-bottom))) 
  (setq f-door-pt3 (list (+ (car base-pt) mitsuke choban-t dw) (+ (cadr base-pt) chiri-bottom dh))) 
  (setq f-door-pt4 (list (+ (car base-pt) mitsuke choban-t) (+ (cadr base-pt) chiri-bottom dh))) 
 
  (setq f-pl-door-lst1
	 (list f-door-pt1 f-door-pt2 f-door-pt3 f-door-pt4 f-door-pt1 ))
     
  ;;;���ʐ}���_�̔ԍ��ƃt�B���b�g���a�̘A�z���X�g�i2�_�ڂ̔ԍ���1�j
  ;;;�i2�_�ڂ̔ԍ���1�B1�_�ڂ�0�Ԃ�NG�B1�_�ڂ��t�B���b�g�������ꍇ�͍Ō�̓_���w��j
  (setq f-fl-lst nil ) 
  (setq f-fl-frame-lst1 nil )
  (setq f-fl-frame-lst2 nil )
  (setq f-fl-frame-lst3 nil )
  (setq f-fl-door-lst1 nil )
  
  ;;;���ʐ}���@���̐��@�v���ʒu�A�\���ʒu�A���ߎړx
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

  ;;;�������}�̒��_���W���X�g�i�G���A�j
  (setq d-pt1 (list (car base-pt) (+ (cadr base-pt) height margin)))
  (setq d-pt2 (list (+ (car base-pt) width) (+ (cadr base-pt) height margin)))
  (setq d-pt3 (list (+ (car base-pt) width) (+ (cadr base-pt) height margin depth)))
  (setq d-pt4 (list (car base-pt) (+ (cadr base-pt) height margin depth)))
  
  (setq d-pl-lst (list d-pt1 d-pt2 d-pt3 d-pt4 d-pt1))
  
  ;;;�������}�̒��_���W���X�g�i�g�j
  
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
   
    20;�������̒��_���W���X�g�i�h�A�j
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


  ;;;�������}���_�̔ԍ��ƃt�B���b�g���a�̘A�z���X�g
  ;;;�i2�_�ڂ̔ԍ���1�B1�_�ڂ�0�Ԃ�NG�B1�_�ڂ��t�B���b�g�������ꍇ�͍Ō�̓_���w��j
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
  
  ;;;�������}���@���̐��@�v���ʒu�A�\���ʒu�A���ߎړx
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

  ;;;���ʐ}�̒��_���W���X�g�i�G���A�j
  (setq s-pt1 (list (+ (car base-pt) width margin) (cadr base-pt)))
  (setq s-pt2 (list (+ (car base-pt) width margin depth) (cadr base-pt)))
  (setq s-pt3 (list (+ (car base-pt) width margin depth) (+ (cadr base-pt) height)))
  (setq s-pt4 (list (+ (car base-pt) width margin) (+ (cadr base-pt) height)))
  
  (setq s-pl-lst (list s-pt1 s-pt2 s-pt3 s-pt4 s-pt1))
  
  ;;;���ʐ}�̒��_���W���X�g�i�g�j

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
  
  ;;;���ʐ}�̒��_���W���X�g�i�h�A�j
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

  ;;;���ʐ}���_�̔ԍ��ƃt�B���b�g���a�̘A�z���X�g
  ;;;�i2�_�ڂ̔ԍ���1�B1�_�ڂ�0�Ԃ�NG�B1�_�ڂ��t�B���b�g�������ꍇ�͍Ō�̓_���w��j
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
  

  ;;;���ʐ}���@���̐��@�v���ʒu�A�\���ʒu�A���ߎړx
  (setq s-mm-lst 
	 (list
	   (list s-pt1 s-pt2 (list (car s-pt1) (- (cadr s-pt1) 100)) "1:20")
	   (list s-pt2 s-pt3 (list (+ (car s-pt2) 100) (cadr s-pt2)) "1:20")
	 )  )
  (setq s-mm-frame-1-lst1 nil )
  (setq s-mm-frame-1-lst2 nil ) 
  (setq s-mm-door-lst1 nil )
  (setq s-mm-door-lst2 nil )  
  

  ;;;���_���W���X�g�A�t�B���b�g���X�g�A���@�����X�g�A�R�s�[���@�A�V�t�g�ʁA��w���Z�b�g�Ń��X�g������
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
  
  ;;;�X�i�b�v���I�t�ɂ���
  (setq now-snap (getvar "osmode"))
  (setvar "osmode" 0)

  ;;;�R�s�[�p�̑I���Z�b�g��������
  (setq shiftcopy-ss (ssadd))
  (setq anycopy-ss (ssadd))

  ;;;��w���쐬
  (setq now-layer (getvar "clayer"))
  (command-s
    "layer" "n" "Guideline"    ;Guideline ��w���쐬
    "s" "Guideline"            ;���݂̉�w�ɐݒ�
    "c" "t" "255,127,0" ""     ;�F�ύX
    ""
  )
  (command-s
    "layer" "n" "Gaikei" ;Gaikei ��w���쐬
    "s" "Gaikei" ;���݂̉�w�ɐݒ�
    "")

  ;;;�e�O�`�}���쐬
  (foreach tmp1 tmp-lst

    ;;;�e���X�g�A�l���擾
    (setq tmp-pt-lst (nth 0 tmp1))
    (setq tmp-fillet-lst (nth 1 tmp1))
    (setq tmp-measurement-lst (nth 2 tmp1))
    (setq copymethod (nth 3 tmp1))
    (setq shift (nth 4 tmp1))
    (setq layername (nth 5 tmp1))

    ;;;�����̑I���Z�b�g��������
    (setq line-ss (ssadd))
    
    ;;;��}����w��ύX����
    (if layername
      (setvar "clayer" layername)
    )

    ;;;�O�`�̕ӂ�����ō�}
    (setq n 0)
    (repeat (length tmp-pt-lst)
      (setq stpt (nth n tmp-pt-lst))
      (setq enpt (nth (1+ n) tmp-pt-lst))
      (command "line" stpt enpt "")
      (ssadd (entlast) line-ss)
      (setq n (1+ n))
    )

    ;;;�ŏ��ɍ쐬���������͐}�`�����擾���Ă���
    (setq first-figname (ssname line-ss 0))

    ;;;�Ώۂ̒��_�Ƀt�B���b�g��������
    (foreach tmp2 tmp-fillet-lst
      (setq index (car tmp2))
      (setq radius (cdr tmp2))
      (setq ss1 (ssadd))
      (setq ss2 (ssadd))
      (ssadd (ssname line-ss (1- index)) ss1)
      (ssadd (ssname line-ss index) ss2)
      (command "fillet" ss1 "r" radius ss2)
    )

    ;;;�쐬���������Ɖ~�ʂ��p�̑I���Z�b�g�ɒǉ�
    (setq pedit-ss (ssadd))
    (setq tmp-figname first-figname)
    (while tmp-figname
      (ssadd tmp-figname pedit-ss)
      (setq tmp-figname (entnext tmp-figname))
    )

    ;;;�����Ɖ~�ʂ���������1�̃|�����C���ɂ���
    (command "pedit" "m" pedit-ss "" "y" "j" "" nil)

    ;;;�쐬�����|�����C�����R�s�[�p�̑I���Z�b�g�ɒǉ�
    (cond ((= "shift" copymethod)
	   (ssadd (entlast) shiftcopy-ss)
	  )
	  ((= "any" copymethod)
	   (ssadd (entlast) anycopy-ss)
	  )
    )

    ;;;���@�����쐬����i���@�X�^�C���͌��݂̐ݒ�ɏ]���j
    (foreach tmp1 tmp-measurement-lst
      (setq dim-pt1 (nth 0 tmp1))
      (setq dim-pt2 (nth 1 tmp1))
      (setq dim-pt3 (nth 2 tmp1))
      (setq dim-scale (nth 3 tmp1))
      (setvar "cannoscale" dim-scale)
      (command "dimlinear" dim-pt1 dim-pt2 dim-pt3)

      ;;;�쐬�������@�����R�s�[�p�̑I���Z�b�g�ɒǉ�
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

    ;;;�C�ӃR�s�[�̐}�`��I���Z�b�g���ƂɃ��X�g��
    (if (< 0 (sslength anycopy-ss))
      (progn
	(setq anycopy-ss-lst (append anycopy-ss-lst (list anycopy-ss)))
	(setq anycopy-ss (ssadd))
      )
    )

    ;;;�ړx��1:1�ɂ���
    (setvar "cannoscale" "1:1")

    ;;;���l�V�t�g�������ꏊ�Ƀ|�����C���Ɛ��@�����R�s�[����
    (if (and (< 0 (sslength shiftcopy-ss)) shift)
      (progn
	(command "copy" shiftcopy-ss "" (list 0 0) shift)
	(setq shiftcopy-ss (ssadd))
      )
    )
    
    ;;;���ݑw��߂�
    (if (/= (getvar "clayer") now-layer)
      (setvar "clayer" now-layer)
    )   
  )

  ;;;�C�ӂ̏ꏊ�Ɏw��̃|�����C���Ɛ��@�����R�s�[����
  (if anycopy-ss-lst
    (progn
      
      ;;;�X�i�b�v��߂�
      (setvar "osmode" now-snap)

      (foreach anycopy-ss anycopy-ss-lst
	(command "copy" anycopy-ss "" pause pause)
      )

      ;;;�X�i�b�v���I�t�ɂ���
      (setvar "osmode" 0)
    )
  )
  
  ;;;���ݑw��߂�
  (setvar "clayer" now-layer)
  
  ;;;�X�i�b�v��߂�
  (setvar "osmode" now-snap)
)


