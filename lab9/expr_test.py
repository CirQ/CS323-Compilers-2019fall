#!/usr/bin/env python3
# encoding: utf-8

import ctypes
import os


cwd = os.getcwd()
lib_path = os.path.join(cwd, 'libexpr.so')
lib = ctypes.cdll.LoadLibrary(lib_path)

def convert(expr):
    func = lib.convert
    func.restype = ctypes.c_char_p
    expr_b = expr.encode()
    expr_buf = ctypes.c_char_p(expr_b)
    return func(expr_buf).decode()


assert convert('5')=='5', convert('5')

assert convert('9-5+2')=='95-2+', convert('9-5+2')

print("Testing completed.")

