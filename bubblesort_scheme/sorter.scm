(define ( main )
   (newline) 
   (write "Sorter")
)
        
(define (sort list)
        (define len (getlength list)) ;Get length of the List.

	(cocktail-sort len list)

)

(define (cocktail-sort len L)
  (cond ((= len 1) (bubble-up L))  
        (else (cocktail-sort (- len 1) (bubble-up L)))))   


(define (bubble-up L)  
   (if (null? (cdr L))  ; if it's a single element list, cdr is null, then return the list as its sorted.
     L   
  (if (< (car L) (cadr L))  ;if (car L)contents of car field of pair L < (cadr L) get cdr of L then get car of that cdr operation
(cons (car L) (bubble-up (cdr L)))  ; if-true: create pair whose car is (car L) and cdr of the new pair is bubble-up of (cdr L). Smaller/Car comes 1st
(cons (cadr L) (bubble-up (cons (car L) (cddr L))))  ; else: create a pair whose first element/car is the "car of the cdr of L" or the first element in the remaining elements of L and cdr of the new pair is bubble-up
;of a newly created pair whose car is the car of list/first element in list and whose cdr is the cdr of the cdr of list or get the remaining elements of L and then get the remaining elements of that list/pair.
  )
 ) 
)


;get element at index n, starts at 0
(define (gete list n)
    (list-ref list n)
)

;returns length, e.g '(1 2 3) is of length 3. 
(define (getlength list)
    (length list)
)

(define (display-list l)
 (for-each (lambda (element)
	   (display element)
	   (display " "))
          l)
 (newline)
 l
)
(main)