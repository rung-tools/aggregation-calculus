/**
 * The MIT License (MIT)
 *
 * Copyright (C) 2018 NG Informatica
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
module.exports =
    T: 1
    always: (expr) ->
        $literal: expr
    both: (left, right) ->
        $and: [left, right]
    cond: (.reduce-right ((acc, [predicate, action]) ->
        $cond: [predicate, action, acc]), null)
    contains: (needle, haystack) ->
        $in: [needle, haystack]
    equals: (left, right) ->
        $eq: [left, right]
    head: (expr) ->
        $array-elem-at: [expr, 0]
    if-else: (condition, when-true, when-false) ->
        $cond: [condition, when-true, when-false]
    last: (expr) ->
        $array-elem-at: [expr, -1]
    length: (list) ->
        $size: list