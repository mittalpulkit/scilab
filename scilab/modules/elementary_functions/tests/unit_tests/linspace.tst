// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Michael Baudin
// Copyright (C) 2012 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// Basic use
computed=linspace(0,1,11);
expected=[0. 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.];
assert_checkalmostequal(computed,expected);
// Basic use with 12 and 14 which also test scaling
computed=linspace(12,14,11);
expected=[12. 12.2 12.4 12.6 12.8 13. 13.2 13.4 13.6 13.8 14.];
assert_checkalmostequal(computed,expected);


// Vector input
assert_checkequal(size(linspace([0;2],[2;5],5)),[2,5]);
assert_checkequal(size(linspace([0;2],[2;5],2)),[2,2]);
assert_checkequal(linspace([0;2],[2;5],2),[0,2;2,5]);
assert_checkalmostequal(linspace([-1;2],[2;6],6), [-1,-0.4,0.2,0.8,1.4,2; 2,2.8,3.6,4.4,5.2,6]);

// Perform a check on the size of the input arguments
assert_checktrue(execstr('linspace(2,[2,2])','errcatch')<>0);


assert_checkequal(linspace(1,2,0),2);
assert_checkequal(linspace(1,2,1),2);
assert_checkequal(linspace(1,2,2),[1,2]);


