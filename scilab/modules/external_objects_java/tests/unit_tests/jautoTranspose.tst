//
//  Copyright (C) 2013 - S/E - Sylvestre Ledru
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.
//
//
// <-- JVM MANDATORY -->
//
warning("off");

jautoTranspose(%t);
assert_checkequal(jautoTranspose(), %t);

assert_checkequal(jconvMatrixMethod(),"rc");

jconvMatrixMethod("cr");
assert_checkequal(jconvMatrixMethod(),"cr");
assert_checkequal(jautoTranspose(), %f);
