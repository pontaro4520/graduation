;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@ 
;;;  �h�A�O�`�ƃr���[�|�[�g���쐬����@�@�@�@�@�@�@�@�@�@�@�@�@�@�@   
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

  ;;;�O�`��}��lsp�t�@�C�������[�h�B
  ;;;�ilsp�t�@�C���̕ۑ��ꏊ�����炩���߁u�T�|�[�g�̌����p�X�v�Ɓu�M���ł���ꏊ�v�ɓo�^���Ă��������B�j
  (load "draw-waku1tobira1.lsp")
  ;(load "draw-waku1.lsp")
  ;(load "draw-waku2.lsp")

  ;;;�����p�ϐ��Q
  
  (setq margin 300.0)       ;���ʁA���ʁA�������̋���
  (setq orikaeshi 20.0)     ;�g�̐܂�Ԃ�
  (setq hone-h 25.0)        ;���̍���
  (setq stt1 1.6)           ;st��1
  (setq stt2 2.3)           ;st��2 
  (setq sust1 1.5)          ;sus��1  
  (setq dt 40.0)            ;�h�A��
  (setq mitsuke 25.0)       ;���t
  (setq mitsuke-back 40.0)  ;���t�i�R�j
  (setq choban-t 3.0)       ;���Ԃ̌���
  (setq chiri-top 3.0)      ;�㕔�̃`��  
  (setq chiri-side 4.0)     ;�����̃`��
  (setq chiri-bottom 8.0)   ;�ꕔ�̃`��
  (setq chiri-front 2.0)    ;�O�̃`��
  (setq chiri-back 3.0)     ;���̃`��
  (setq band 5.0)           ;�o���h�̗���
  
  (setq var-lst
	 (list
	   margin orikaeshi hone-h stt1 stt2
	   sust1 dt mitsuke mitsuke-back choban-t
	   chiri-top chiri-side chiri-bottom chiri-front chiri-back
	   band
	 )
  )

  ;;;��}����O�`�̊�_
  (setq base-pt (getpoint "�O�`�̊�_���w�肵�Ă��������B"))
  
  ;;;���@���擾
  (initget 1)
  (setq width (getreal "\nwidth�̒l����͂��Ă��������B"))
  (initget 1)
  (setq height (getreal "\nheight�̒l����͂��Ă��������B"))
  (initget 1)
  (setq depth (getreal "\ndepth�̒l����͂��Ă��������B"))

  ;;;�g�^�C�v�Ɣ��^�C�v���擾
  (initget 1 "1 2 3 4")
  (setq waku-typ (getkword "�g�^�C�v��I�����Ă��������B1:V�g ST�g / 2:V�g AT�g�i�������j / 3:W�g ST�g�i�������j / 4:W�g AT�g�i�������j �� "))
  (initget 1 "1 2")
  (setq door-typ (getkword "���^�C�v��I�����Ă��������B1:�t���b�V�� / 2:�y�i�������j �� "))
  
  ;;;�^�C�v���Ƃ̊O�`���쐬
  (cond
    ((and
       (= "1" waku-typ)
       (= "1" door-typ)
     )

     ;;;�h�A�O�`1
     (draw-waku1tobira1 width height depth base-pt var-lst)
    )
    ((and
       (= "1" waku-typ)
       (= "2" door-typ)
     )
       ;;;�I��
  (print "�������ł��B")
  (princ)
     
    )
    (T
     (print "�������ł��B")
     (princ)
    )
  )



  ;;;�I��
  (print "�I�����܂����B")
  (princ)
)