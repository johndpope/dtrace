/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

#pragma ident	"@(#)tst.PartialOutputTransDefn.d	1.1	06/08/28 SMI"

/*
 * ASSERTION:
 * A translator declaration may omit expressions for one or more members
 * of the output type
 *
 * SECTION: Translators/Translator Declarations;
 * 	Translators/Translate Operator
 */

#pragma D option quiet

struct input_struct {
	int ii;
	char ic;
};

struct output_struct {
	int oi;
	char oc;
};


translator struct output_struct < struct input_struct *ivar >
{
	oi = ((struct input_struct *) ivar)->ii;
};

BEGIN
{
	printf("Translating only a part of the input struct");
	exit(0);
}
