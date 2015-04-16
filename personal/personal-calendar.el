;;;
;;;
;;;

(prelude-require-packages '(cal-china-x))


(setq calendar-remove-frame-by-deleting t)
(setq chinese-calendar-celestial-stem
      ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"]
      chinese-calendar-terrestrial-branch
      ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
(require 'cal-china-x)
(setq mark-holidays-in-calendar t)
(setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
(setq calendar-holidays cal-china-x-important-holidays)
(add-hook 'diary-display-hook 'fancy-diary-display)
(add-hook 'today-visible-calendar-hook 'calendar-mark-today)
(add-hook 'diary-list-entries-hook 'diary-sort-entries t)
(setq calendar-week-start-day 1)              ; 每周第一天是周一

;; 设置所在地的经纬度和地名，calendar 中按 S，可以根据这些信息告知你每天的日出和日落的时间：
(setq calendar-latitude +31.11)  
(setq calendar-longitude +121.29)  
(setq calendar-location-name "ShangHai")  


