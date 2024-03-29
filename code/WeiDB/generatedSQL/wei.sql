U S E   [ W e i ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ I n t e r f a c e s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 9   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ I n t e r f a c e s ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ h a n d l e r ]   [ i n t ]   N O T   N U L L ,  
 	 [ d r i v e r ]   [ i n t ]   N O T   N U L L ,  
 	 [ f i l e f o r m a t ]   [ v a r c h a r ] ( 1 0 0 )   N O T   N U L L ,  
 	 [ c o n f i g ]   [ t e x t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ C h a n g e S t a t u s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 1   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ C h a n g e S t a t u s ]  
 	 @ r e q u e s t i d   i n t ,    
 	 @ s t a t u s   i n t ,  
 	 @ i s e r r o r   i n t ,  
 	 @ o f a c S t a t u s   i n t ,  
 	 @ m o d i f i e d o p e r   v a r c h a r ( 2 5 5 )   =   ' d b o '  
 A S  
 	 u p d a t e   R e q u e s t s   s e t   s t a t u s = @ s t a t u s ,   i s e r r o r = @ i s e r r o r ,   o f a c s t a t u s = @ o f a c S t a t u s ,  
 	 	 m o d i f i e d d a t e t i m e = G E T D A T E ( ) ,   m o d i f i e d o p e r = @ m o d i f i e d o p e r   w h e r e   i d = @ r e q u e s t i d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ G e t L o c k ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 1   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ G e t L o c k ]  
 	 @ r e q u e s t i d   i n t    
 A S  
 	 u p d a t e   R e q u e s t s   s e t   p r o c e s s l o c k = 1 ,   m o d i f i e d d a t e t i m e = G E T D A T E ( ) ,   m o d i f i e d o p e r = ' d b o '   w h e r e   p r o c e s s l o c k = 0   a n d   i d = @ r e q u e s t i d  
 R E T U R N  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ R e l e a s e L o c k ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 2   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ R e l e a s e L o c k ]  
 	 @ r e q u e s t i d   i n t    
 A S  
 	 u p d a t e   R e q u e s t s   s e t   p r o c e s s l o c k = 0 , m o d i f i e d d a t e t i m e = G E T D A T E ( ) ,   m o d i f i e d o p e r = ' d b o '   w h e r e   p r o c e s s l o c k = 1   a n d   i d = @ r e q u e s t i d  
  
 R E T U R N  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ O f a c R e s p o n s e s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 1 0   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ O f a c R e s p o n s e s ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ r e q u e s t i d ]   [ i n t ]   N O T   N U L L ,  
 	 [ r e s p o n s e b o d y ]   [ n t e x t ]   N U L L ,  
 	 [ i d e n t i f i e r ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ c r e a t e d d a t e t i m e ]   [ d a t e t i m e ]   N O T   N U L L ,  
 	 [ c r e a t e d o p e r ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ W e i _ G e t R e q u e s t ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 3   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ W e i _ G e t R e q u e s t ]  
 	 @ r e q u e s t i d   i n t  
 A S  
 	 S E L E C T   *   f r o m   R e q u e s t s   w h e r e   i d   =   @ r e q u e s t i d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ W e i _ A d d R e s p o n s e M e s s a g e ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 3   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ W e i _ A d d R e s p o n s e M e s s a g e ]  
 	 @ r e q u e s t i d   i n t ,    
 	 @ r e s p o n s e m e s s a g e   n T e x t ,  
 	 @ s t a t u s   i n t ,  
 	 @ i s e r r o r   i n t ,  
 	 @ m o d i f i e d o p e r   v a r c h a r ( 2 5 5 )   =   ' d b o '  
 A S  
 	 u p d a t e   R e q u e s t s   s e t   r e s p o n s e m e s s a g e = @ r e s p o n s e m e s s a g e ,   s t a t u s = @ s t a t u s ,   i s e r r o r = @ i s e r r o r ,  
 	 	 m o d i f i e d d a t e t i m e = G E T D A T E ( ) ,   m o d i f i e d o p e r = @ m o d i f i e d o p e r   w h e r e   i d = @ r e q u e s t i d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ W e i _ M a r k R e q u e s t E r r o r ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 3   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ W e i _ M a r k R e q u e s t E r r o r ]  
 	 @ r e q u e s t i d   i n t  
 A S  
 u p d a t e   R e q u e s t s   s e t     i s e r r o r = 1  
 	 	   w h e r e   i d = @ r e q u e s t i d  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R e q u e s t s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 1 4   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R e q u e s t s ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ r e q u e s t h e a d e r s ]   [ n t e x t ]   N U L L ,  
 	 [ i n t e r f a c e i d ]   [ i n t ]   N O T   N U L L ,  
 	 [ m e s s a g e b o d y ]   [ n t e x t ]   N O T   N U L L ,  
 	 [ s t a t u s ]   [ i n t ]   N O T   N U L L ,  
 	 [ i s e r r o r ]   [ i n t ]   N O T   N U L L ,  
 	 [ o f a c s t a t u s ]   [ i n t ]   N U L L ,  
 	 [ h a s c t c ]   [ i n t ]   N O T   N U L L ,  
 	 [ p r o c e s s l o c k ]   [ i n t ]   N U L L ,  
 	 [ t r a n s l a t e d m e s s a g e ]   [ n t e x t ]   N U L L ,  
 	 [ r e s p o n s e m e s s a g e ]   [ n t e x t ]   N U L L ,  
 	 [ c r e a t e d d a t e t i m e ]   [ d a t e t i m e ]   N O T   N U L L ,  
 	 [ c r e a t e d o p e r ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ m o d i f i e d d a t e t i m e ]   [ d a t e t i m e ]   N U L L ,  
 	 [ m o d i f i e d o p e r ]   [ v a r c h a r ] ( 2 5 5 )   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A u d i t ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 5   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A u d i t ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ r e q u e s t i d ]   [ i n t ]   N O T   N U L L ,  
 	 [ l e v e l ]   [ i n t ]   N O T   N U L L ,  
 	 [ s t a t u s ]   [ i n t ]   N O T   N U L L ,  
 	 [ m e s s a g e ]   [ n t e x t ]   N U L L ,  
 	 [ c r e a t e d d a t e t i m e ]   [ d a t e t i m e ]   N O T   N U L L ,  
 	 [ c r e a t e d o p e r ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ D r i v e r s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 6   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ D r i v e r s ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ d l l ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ t y p e ]   [ v a r c h a r ] ( 2 5 5 )   N U L L ,  
 	 [ c o n f i g ]   [ t e x t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ H a n d l e r s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 7   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ H a n d l e r s ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ d l l ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ t y p e ]   [ v a r c h a r ] ( 2 5 5 )   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ g e t I n t e r f a c e s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 1   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ g e t I n t e r f a c e s ]  
 	  
 A S  
 	 S E L E C T   i . * ,   d . n a m e   a s   d r i v e r n a m e ,   d . d l l   a s   d r i v e r d l l ,   d . t y p e   a s   d r i v e r t y p e ,   h . n a m e   a s   h a n d l e r n a m e ,   h . d l l   a s   h a n d l e r d l l ,   h . t y p e   a s   h a n d l e r t y p e   f r o m   I n t e r f a c e s   i ,   H a n d l e r s   h ,   D r i v e r s   d  
 	 w h e r e   i . d r i v e r = d . i d   a n d   i . h a n d l e r = h . i d  
 R E T U R N   0  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ W e i _ A d d O f a c R e s p o n s e ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 2   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ W e i _ A d d O f a c R e s p o n s e ]  
 	 @ r e q u e s t i d   i n t ,    
 	 @ r e s p o n s e b o d y   n t e x t ,  
 	 @ i d e n t i f i e r   v a r c h a r ( 2 5 5 ) ,  
 	 @ c r e a t e d o p e r   v a r c h a r ( 2 5 5 )   =   ' d b o '  
 A S  
 	 i n s e r t   i n t o   O f a c R e s p o n s e s   ( r e q u e s t i d ,   r e s p o n s e b o d y   ,   i d e n t i f i e r ,   c r e a t e d d a t e t i m e   ,   c r e a t e d o p e r )  
 	 	 v a l u e s   ( @ r e q u e s t i d ,   @ r e s p o n s e b o d y ,   @ i d e n t i f i e r ,   G E T D A T E ( ) ,   @ c r e a t e d o p e r )  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ A d d R e q u e s t ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 0   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ A d d R e q u e s t ]  
 	 @ n a m e   n v a r c h a r ( 2 5 5 ) ,  
 	 @ i n t e r f a c e i d   i n t ,  
 	 @ r e q u e s t h e a d e r   n t e x t ,  
 	 @ m e s s a g e b o d y   n t e x t ,  
 	 @ s t a t u s   i n t ,  
 	 @ i s e r r o r   i n t ,  
 	 @ c r e a t e d o p e r   v a r c h a r ( 2 5 5 )   =   ' d b o '  
 A S  
 	 I N S E R T   I N T O   [ R e q u e s t s ]  
                       ( [ n a m e ]  
                       , [ i n t e r f a c e i d ]  
 	 	       , [ r e q u e s t h e a d e r s ]  
                       , [ m e s s a g e b o d y ]  
                       , [ s t a t u s ]  
 	 	       , [ i s e r r o r ]  
 	 	       , [ h a s c t c ]  
 	 	       , [ o f a c s t a t u s ]  
                       , [ p r o c e s s l o c k ]  
                       , [ c r e a t e d d a t e t i m e ]  
 	 	       , [ c r e a t e d o p e r ] )  
           V A L U E S  
                       ( @ n a m e  
                       , @ i n t e r f a c e i d  
 	 	       , @ r e q u e s t h e a d e r    
                       , @ m e s s a g e b o d y  
                       , @ s t a t u s  
 	 	       , @ i s e r r o r  
 	 	       , 0  
 	 	       , 1  
                       , 0  
                       , G E T D A T E ( )  
 	 	       , ' d b o ' )  
 s e l e c t   @ @ I D E N T I T Y  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ A d d T r a n s l a t e d M e s s a g e ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 1   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ A d d T r a n s l a t e d M e s s a g e ]  
 	 @ r e q u e s t i d   i n t ,    
 	 @ t r a n s l a t e d m e s s a g e   n T e x t ,  
 	 @ s t a t u s   i n t ,  
 	 @ i s e r r o r   i n t ,  
 	 @ h a s C t c   i n t ,  
 	 @ m o d i f i e d o p e r   v a r c h a r ( 2 5 5 )   =   ' d b o '  
 A S  
 	 u p d a t e   R e q u e s t s   s e t   t r a n s l a t e d m e s s a g e = @ t r a n s l a t e d m e s s a g e ,   s t a t u s = @ s t a t u s ,   i s e r r o r = @ i s e r r o r , h a s c t c = @ h a s C t c ,  
 	 	 m o d i f i e d d a t e t i m e = G E T D A T E ( ) ,   m o d i f i e d o p e r = @ m o d i f i e d o p e r   w h e r e   i d = @ r e q u e s t i d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ W e i _ A d d A u d i t ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 2   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ W e i _ A d d A u d i t ]  
 	 @ r e q u e s t I d   i n t ,  
 	 @ a u d i t L e v e l   i n t ,  
 	 @ m e s s a g e   n t e x t ,  
 	 @ c r e a t e d o p e r   v a r c h a r ( 2 5 5 )   =   ' d b o '  
  
 A S  
 	 d e c l a r e   @ s t a t u s   i n t  
 	 s e l e c t   @ s t a t u s = s t a t u s   f r o m   R e q u e s t s   w h e r e   i d = @ r e q u e s t I d  
  
 	 i n s e r t   i n t o   [ A u d i t ]   ( r e q u e s t i d ,   s t a t u s , l e v e l ,   m e s s a g e ,   c r e a t e d o p e r ,   c r e a t e d d a t e t i m e )  
 	 v a l u e s   ( @ r e q u e s t I d ,   @ s t a t u s ,   @ a u d i t L e v e l ,   @ m e s s a g e ,   @ c r e a t e d o p e r ,   G E T D A T E ( ) )  
  
 R E T U R N   0  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ g e t H a n d l e r s ]         S c r i p t   D a t e :   0 2 / 1 0 / 2 0 1 1   2 3 : 1 1 : 0 1   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ g e t H a n d l e r s ]  
 	  
 A S  
 	 S E L E C T   *   f r o m   H a n d l e r s  
 R E T U R N   0  
 G O  
 