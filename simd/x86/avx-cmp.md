# AVX Compare Predicate

[Back](../../index.md#simd){: .button}

The `_m256_cmp_ps` intrinsic in the AVX instruction set has different predicates to determine the type of comparison needed to be done

## Available option

Copied from stack overflow. Credits original author Dave Dopson. Pasted here for personal reference

https://stackoverflow.com/questions/16988199/how-to-choose-avx-compare-predicate-variants

When either operand is NaN, ordered vs unordered dictates the result value.

Ordered comparisons returns false for NaN operands.

_CMP_EQ_OQ of 1.0 and 1.0 gives true (vanilla equality).
_CMP_EQ_OQ of NaN and 1.0 gives false.
_CMP_EQ_OQ of 1.0 and NaN gives false.
_CMP_EQ_OQ of NaN and NaN gives false.
Unordered comparison returns true for NaN operands.

_CMP_EQ_UQ of 1.0 and 1.0 gives true (vanilla equality).
_CMP_EQ_UQ of NaN and 1.0 gives true.
_CMP_EQ_UQ of 1.0 and NaN gives true.
_CMP_EQ_UQ of NaN and NaN gives true.
The difference between signalling vs non-signalling only impacts the value of the MXCSR. To observe the effect, you'd need to clear the MXCSR, perform one or more comparisons, then read from the MXCSR (thanks to Peter Cordes for clarifying this!).

The order of the enum values is pretty confusing. It helps to put them in a table...

| comparison	| ordered (non-signalling)	| unordered (non-signalling)   |
|-------------|---------------------------|------------------------------|
| a < b	      | _CMP_LT_OQ	              |       _CMP_NGE_UQ            |
| a <= b      |	_CMP_LE_OQ	              |       _CMP_NGT_UQ            |
| a == b      |	_CMP_EQ_OQ	              |       _CMP_EQ_UQ             |
| a != b      |_CMP_NEQ_OQ	              |       _CMP_NEQ_UQ            |
| a >= b      |_CMP_GE_OQ	                |       _CMP_NLT_UQ            |
| a > b       |_CMP_GT_OQ	                |       _CMP_NLE_UQ            |
| true	      |_CMP_ORD_Q	                |       _CMP_TRUE_UQ (useless) |
| false	      |_CMP_FALSE_OQ (useless)	  |       _CMP_UNORD_Q           |

With MXCSR "signaling":

| comparison	| ordered (signalling)	      |   unordered (signalling)     |
|-------------|-----------------------------|------------------------------|
| a < b	      |     _CMP_LT_OS	            |     _CMP_NGE_US              |
| a <= b	    |     _CMP_LE_OS	            |     _CMP_NGT_US              |
| a == b	    |     _CMP_EQ_OS	            |     _CMP_EQ_US               |
| a != b	    |     _CMP_NEQ_OS	            |     _CMP_NEQ_US              |
| a >= b	    |     _CMP_GE_OS	            |     _CMP_NLT_US              |
| a > b	      |     _CMP_GT_OS	            |     _CMP_NLE_US              |
| true	      |     _CMP_ORD_S	            |     _CMP_TRUE_US (useless)   |
| false	      |     _CMP_FALSE_OS (useless)	|     _CMP_UNORD_S             |

The order of the enum values can be explained by:

The first four ops are canonical (EQ, LT, LE, UNORD). Note that if the 0x00 and 0x03 values were LE/UNORD or UNORD/LE, the four canonical ops could be viewed as a composition of two separate bits, but that's not possible for their actual order.

The remaining ops are transformations of the first four.

The 0x04 bit precisely inverts the result value, which also effectively also toggles ordered vs unordered. For example, LT_O becomes NLT_U, which is similar to GE, but see the rule for unordered naming.

The 0x08 bit toggles ordered vs unordered (without changing anything else).

Setting both the 0x04 and 0x08 bits negates the result for numerical operands, while retaining the same ordering behavior for NaN operands. For example, LT_O becomes GE_O.

Note that when the comparison is unordered (ie, one of 0x04 or 0x08 is set), a negated name is used: NGE instead of LT, NGT instead of LE, NLT instead of GE, and NLE instead of GT; however both EQ and NEQ need to define both ordered and unordered variants, so those names only change under the 0x04 negating transformation, not the 0x08 orderedness-toggling transformation.

FALSE/TRUE are mostly useless 0x08 transformations of UNORD/ORD, always returning the same value. For example, UNORD (0x03) returns false if both operands are numbers, or true if either is NaN; adding 0x08, we get FALSE (0x0b), which has toggled behavior for NaN operands, causing it to return false for both cases.

Fun fact: the TRUE op wasn't always completely useless. Prior to AVX2 it was the most compact mechanism for setting a YMM register to all 1's. See https://godbolt.org/z/Yb5TjP for details (Thanks Peter Cordes).

The 0x10 bit toggles signaling vs not. Note that of the canonical ops, LE and LT are signaling, while EQ and UNORD are not, so setting the 0x10 bit removes signaling from the LE/LT ops and adds it to the EQ/UNORD ops. Because that's obviously sensible and not at all confusing.

