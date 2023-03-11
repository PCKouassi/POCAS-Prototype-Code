; Homing sequence to place printer head at top right
G28 
; Homing sequence to place printer head at top right
G0 Z150 F2000 
G0 X167 F2000 Y220 F1000
 // printer bed extended to forward
G4 S20; Pause for 10 secs to load 

;;;;;;;;;;;; Wait for User Input to start;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; Drying-Fixation Procedure ;;;;;
; Sequence to place the slide rack into the fixation chamber
G0 Z160 
G0 Y209 F1000
G0 X0 F800
G0 Z50 F800
G4 S5

;;;;;;;; Cartridge Heater Prep ;;;;;;;;;;
;M109 S150 ; Pauses code until element reaches the prep temp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; Fixation Procedre ;;;;;;;;;

;M104 S180 ; Sets the heating element to 180 C 
;M106 P0 S128; Sets the nozzle blower 10 50% duty cycle 
;G4   S200; Holds heating element temp and convectino for 3.3 minutes 
;M104 S200 ; Sets the heating element to 200 C 
;G4   S400 ; Holds the temp for ~ 6 minutes to fix sputum to slide

;M104 S0 ; Sets the heating element to 0 C
;M106 S0 ; Turns off blower fan

; This is the Acid-Fast staining procedure in terms of G-Code movements
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; Acid-Fast Stain Procedsre ;;;;;;;;;
;;;;;;;; Auramine Solution dip :::::::::::
G0 Z160 F700
G0 Y69  F1500
G0 X4  F3000
G0 Z48  F2000
G4 S900 ;Stay in dipped position for 15 minutes
G0 Z160 F1500

;;;;;; Rinse 1 ;;;;;;
G0 Z160
G0 Y69 F800
G0 X74 F800
G0 Z48  F2000
G4 S10 ;Stay in dipped position for 10 seconds
G0 Z160 F800

;;;;;;; Decolorizer Solution dip ;;;;;;;
G0 Z160
G0 Y69
G0 X168
G0 Z48  F2000
G4 S150      ;Stay in dipped position for  150 seconds 2.5 minutes 
G0 Z160

;;;;;; Rinse 2 ;;;;;;
G0 Z160
G0 Y69 F800
G0 X74 F800
G0 Z48  F2000
G4 S10      ;Stay in dipped position for 10 seconds
G0 Z160 F800

;;;;;;; Counterstain Solution dip ;;;;;;;
G0 Z160
G0 Y170
G0 X168
G0 Z48  F2000
G4 S150      ;Stay in dipped position for  150 seconds 2.5 minutes 
G0 Z160

;;;;;; Rinse 2 ;;;;;;
G0 Z140
G0 Y69 F800
G0 X74 F800
G0 Z48  F2000
G4 S10      ;Stay in dipped position for 10 seconds
G0 Z160 F800

;;;;;;;;Home;;;;;;;;;;;
G0 Z160 X167 Y220 