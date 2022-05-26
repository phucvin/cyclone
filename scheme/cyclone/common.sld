;;;; Cyclone Scheme
;;;; https://github.com/justinethier/cyclone
;;;;
;;;; Copyright (c) 2014-2016, Justin Ethier
;;;; All rights reserved.
;;;;
;;;; This module contains definitions used by the compiler and interpreter.
;;;;
(define-library (scheme cyclone common)
  (export 
    *Cyc-version-banner*
    *version*
    *version-number*
    *version-name*
    *version-banner*
    *c-file-header-comment*
    *reader-source-db*
    memloc
  )
  (begin
(define *version-number* "0.35.0")
(define *version-name* "")
(define *version* (string-append *version-number* " " *version-name* ""))

(define *version-banner* 
 (string-append "
              :@ 
            @@@  
          @@@@:  
        `@@@@@+  
       .@@@+@@@ 
       @@     @@     Cyclone Scheme->C compiler
      ,@             http://justinethier.github.io/cyclone/
      '@        
      .@             (c) 2014-2022 Justin Ethier
       @@     #@     Version " *version* "
       `@@@#@@@.
        #@@@@@   
        +@@@+    
        @@#      
      `@.  
     
"))

(define *Cyc-version-banner* *version-banner*)

(define *c-file-header-comment* 
  (string-append "/**
 ** This file was automatically generated by the Cyclone scheme compiler
 ** http://justinethier.github.io/cyclone/
 **
 ** (c) 2014-2022 Justin Ethier
 ** Version " *version* "
 **
 **/
"))

(define *reader-source-db* '())

(define-c memloc
  "(void *data, int argc, closure _, object k, object obj)"
  " char str[32];
    sprintf(str, \"%p\", obj);
    make_utf8_string(data, s, str);
  return_closcall1(data, k, &s);")

))
