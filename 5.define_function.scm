;定义PI=3.1415.....
(define PI (* 4 (atan 1.0)))
;由度转换为弧度的函数
(define (ToRate num) 
    (* PI (/ num 180) ) )
;按照一个常量速度（水平分速度）运动的物体，t秒内的位移的函数
(define (Fx vx t)
    (* vx t))
;计算物体落地前的飞行时间的函数，参数是垂直分速度
(define (Ft vy)
    (/ (* 2 vy) 9.8))
    
;以初速度v和角度theta掷出的小球的飞行距离 
(define (distance v ang)
    (Fx 
        (* v (cos (ToRate ang))) 
        (Ft (* v (sin (ToRate ang))))
    )
)