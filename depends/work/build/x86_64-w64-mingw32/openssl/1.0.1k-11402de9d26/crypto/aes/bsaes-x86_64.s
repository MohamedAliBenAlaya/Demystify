.text	




.def	_bsaes_encrypt8;	.scl 3;	.type 32;	.endef
.p2align	6
_bsaes_encrypt8:
	leaq	.LBS0(%rip),%r11

	movdqa	(%rax),%xmm8
	leaq	16(%rax),%rax
	movdqa	80(%r11),%xmm7
	pxor	%xmm8,%xmm15
	pxor	%xmm8,%xmm0
.byte	102,68,15,56,0,255
	pxor	%xmm8,%xmm1
.byte	102,15,56,0,199
	pxor	%xmm8,%xmm2
.byte	102,15,56,0,207
	pxor	%xmm8,%xmm3
.byte	102,15,56,0,215
	pxor	%xmm8,%xmm4
.byte	102,15,56,0,223
	pxor	%xmm8,%xmm5
.byte	102,15,56,0,231
	pxor	%xmm8,%xmm6
.byte	102,15,56,0,239
.byte	102,15,56,0,247
_bsaes_encrypt8_bitslice:
	movdqa	0(%r11),%xmm7
	movdqa	16(%r11),%xmm8
	movdqa	%xmm5,%xmm9
	psrlq	$1,%xmm5
	movdqa	%xmm3,%xmm10
	psrlq	$1,%xmm3
	pxor	%xmm6,%xmm5
	pxor	%xmm4,%xmm3
	pand	%xmm7,%xmm5
	pand	%xmm7,%xmm3
	pxor	%xmm5,%xmm6
	psllq	$1,%xmm5
	pxor	%xmm3,%xmm4
	psllq	$1,%xmm3
	pxor	%xmm9,%xmm5
	pxor	%xmm10,%xmm3
	movdqa	%xmm1,%xmm9
	psrlq	$1,%xmm1
	movdqa	%xmm15,%xmm10
	psrlq	$1,%xmm15
	pxor	%xmm2,%xmm1
	pxor	%xmm0,%xmm15
	pand	%xmm7,%xmm1
	pand	%xmm7,%xmm15
	pxor	%xmm1,%xmm2
	psllq	$1,%xmm1
	pxor	%xmm15,%xmm0
	psllq	$1,%xmm15
	pxor	%xmm9,%xmm1
	pxor	%xmm10,%xmm15
	movdqa	32(%r11),%xmm7
	movdqa	%xmm4,%xmm9
	psrlq	$2,%xmm4
	movdqa	%xmm3,%xmm10
	psrlq	$2,%xmm3
	pxor	%xmm6,%xmm4
	pxor	%xmm5,%xmm3
	pand	%xmm8,%xmm4
	pand	%xmm8,%xmm3
	pxor	%xmm4,%xmm6
	psllq	$2,%xmm4
	pxor	%xmm3,%xmm5
	psllq	$2,%xmm3
	pxor	%xmm9,%xmm4
	pxor	%xmm10,%xmm3
	movdqa	%xmm0,%xmm9
	psrlq	$2,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$2,%xmm15
	pxor	%xmm2,%xmm0
	pxor	%xmm1,%xmm15
	pand	%xmm8,%xmm0
	pand	%xmm8,%xmm15
	pxor	%xmm0,%xmm2
	psllq	$2,%xmm0
	pxor	%xmm15,%xmm1
	psllq	$2,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	movdqa	%xmm2,%xmm9
	psrlq	$4,%xmm2
	movdqa	%xmm1,%xmm10
	psrlq	$4,%xmm1
	pxor	%xmm6,%xmm2
	pxor	%xmm5,%xmm1
	pand	%xmm7,%xmm2
	pand	%xmm7,%xmm1
	pxor	%xmm2,%xmm6
	psllq	$4,%xmm2
	pxor	%xmm1,%xmm5
	psllq	$4,%xmm1
	pxor	%xmm9,%xmm2
	pxor	%xmm10,%xmm1
	movdqa	%xmm0,%xmm9
	psrlq	$4,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$4,%xmm15
	pxor	%xmm4,%xmm0
	pxor	%xmm3,%xmm15
	pand	%xmm7,%xmm0
	pand	%xmm7,%xmm15
	pxor	%xmm0,%xmm4
	psllq	$4,%xmm0
	pxor	%xmm15,%xmm3
	psllq	$4,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	decl	%r10d
	jmp	.Lenc_sbox
.p2align	4
.Lenc_loop:
	pxor	0(%rax),%xmm15
	pxor	16(%rax),%xmm0
.byte	102,68,15,56,0,255
	pxor	32(%rax),%xmm1
.byte	102,15,56,0,199
	pxor	48(%rax),%xmm2
.byte	102,15,56,0,207
	pxor	64(%rax),%xmm3
.byte	102,15,56,0,215
	pxor	80(%rax),%xmm4
.byte	102,15,56,0,223
	pxor	96(%rax),%xmm5
.byte	102,15,56,0,231
	pxor	112(%rax),%xmm6
.byte	102,15,56,0,239
	leaq	128(%rax),%rax
.byte	102,15,56,0,247
.Lenc_sbox:
	pxor	%xmm5,%xmm4
	pxor	%xmm0,%xmm1
	pxor	%xmm15,%xmm2
	pxor	%xmm1,%xmm5
	pxor	%xmm15,%xmm4

	pxor	%xmm2,%xmm5
	pxor	%xmm6,%xmm2
	pxor	%xmm4,%xmm6
	pxor	%xmm3,%xmm2
	pxor	%xmm4,%xmm3
	pxor	%xmm0,%xmm2

	pxor	%xmm6,%xmm1
	pxor	%xmm4,%xmm0
	movdqa	%xmm6,%xmm10
	movdqa	%xmm0,%xmm9
	movdqa	%xmm4,%xmm8
	movdqa	%xmm1,%xmm12
	movdqa	%xmm5,%xmm11

	pxor	%xmm3,%xmm10
	pxor	%xmm1,%xmm9
	pxor	%xmm2,%xmm8
	movdqa	%xmm10,%xmm13
	pxor	%xmm3,%xmm12
	movdqa	%xmm9,%xmm7
	pxor	%xmm15,%xmm11
	movdqa	%xmm10,%xmm14

	por	%xmm8,%xmm9
	por	%xmm11,%xmm10
	pxor	%xmm7,%xmm14
	pand	%xmm11,%xmm13
	pxor	%xmm8,%xmm11
	pand	%xmm8,%xmm7
	pand	%xmm11,%xmm14
	movdqa	%xmm2,%xmm11
	pxor	%xmm15,%xmm11
	pand	%xmm11,%xmm12
	pxor	%xmm12,%xmm10
	pxor	%xmm12,%xmm9
	movdqa	%xmm6,%xmm12
	movdqa	%xmm4,%xmm11
	pxor	%xmm0,%xmm12
	pxor	%xmm5,%xmm11
	movdqa	%xmm12,%xmm8
	pand	%xmm11,%xmm12
	por	%xmm11,%xmm8
	pxor	%xmm12,%xmm7
	pxor	%xmm14,%xmm10
	pxor	%xmm13,%xmm9
	pxor	%xmm14,%xmm8
	movdqa	%xmm1,%xmm11
	pxor	%xmm13,%xmm7
	movdqa	%xmm3,%xmm12
	pxor	%xmm13,%xmm8
	movdqa	%xmm0,%xmm13
	pand	%xmm2,%xmm11
	movdqa	%xmm6,%xmm14
	pand	%xmm15,%xmm12
	pand	%xmm4,%xmm13
	por	%xmm5,%xmm14
	pxor	%xmm11,%xmm10
	pxor	%xmm12,%xmm9
	pxor	%xmm13,%xmm8
	pxor	%xmm14,%xmm7





	movdqa	%xmm10,%xmm11
	pand	%xmm8,%xmm10
	pxor	%xmm9,%xmm11

	movdqa	%xmm7,%xmm13
	movdqa	%xmm11,%xmm14
	pxor	%xmm10,%xmm13
	pand	%xmm13,%xmm14

	movdqa	%xmm8,%xmm12
	pxor	%xmm9,%xmm14
	pxor	%xmm7,%xmm12

	pxor	%xmm9,%xmm10

	pand	%xmm10,%xmm12

	movdqa	%xmm13,%xmm9
	pxor	%xmm7,%xmm12

	pxor	%xmm12,%xmm9
	pxor	%xmm12,%xmm8

	pand	%xmm7,%xmm9

	pxor	%xmm9,%xmm13
	pxor	%xmm9,%xmm8

	pand	%xmm14,%xmm13

	pxor	%xmm11,%xmm13
	movdqa	%xmm5,%xmm11
	movdqa	%xmm4,%xmm7
	movdqa	%xmm14,%xmm9
	pxor	%xmm13,%xmm9
	pand	%xmm5,%xmm9
	pxor	%xmm4,%xmm5
	pand	%xmm14,%xmm4
	pand	%xmm13,%xmm5
	pxor	%xmm4,%xmm5
	pxor	%xmm9,%xmm4
	pxor	%xmm15,%xmm11
	pxor	%xmm2,%xmm7
	pxor	%xmm12,%xmm14
	pxor	%xmm8,%xmm13
	movdqa	%xmm14,%xmm10
	movdqa	%xmm12,%xmm9
	pxor	%xmm13,%xmm10
	pxor	%xmm8,%xmm9
	pand	%xmm11,%xmm10
	pand	%xmm15,%xmm9
	pxor	%xmm7,%xmm11
	pxor	%xmm2,%xmm15
	pand	%xmm14,%xmm7
	pand	%xmm12,%xmm2
	pand	%xmm13,%xmm11
	pand	%xmm8,%xmm15
	pxor	%xmm11,%xmm7
	pxor	%xmm2,%xmm15
	pxor	%xmm10,%xmm11
	pxor	%xmm9,%xmm2
	pxor	%xmm11,%xmm5
	pxor	%xmm11,%xmm15
	pxor	%xmm7,%xmm4
	pxor	%xmm7,%xmm2

	movdqa	%xmm6,%xmm11
	movdqa	%xmm0,%xmm7
	pxor	%xmm3,%xmm11
	pxor	%xmm1,%xmm7
	movdqa	%xmm14,%xmm10
	movdqa	%xmm12,%xmm9
	pxor	%xmm13,%xmm10
	pxor	%xmm8,%xmm9
	pand	%xmm11,%xmm10
	pand	%xmm3,%xmm9
	pxor	%xmm7,%xmm11
	pxor	%xmm1,%xmm3
	pand	%xmm14,%xmm7
	pand	%xmm12,%xmm1
	pand	%xmm13,%xmm11
	pand	%xmm8,%xmm3
	pxor	%xmm11,%xmm7
	pxor	%xmm1,%xmm3
	pxor	%xmm10,%xmm11
	pxor	%xmm9,%xmm1
	pxor	%xmm12,%xmm14
	pxor	%xmm8,%xmm13
	movdqa	%xmm14,%xmm10
	pxor	%xmm13,%xmm10
	pand	%xmm6,%xmm10
	pxor	%xmm0,%xmm6
	pand	%xmm14,%xmm0
	pand	%xmm13,%xmm6
	pxor	%xmm0,%xmm6
	pxor	%xmm10,%xmm0
	pxor	%xmm11,%xmm6
	pxor	%xmm11,%xmm3
	pxor	%xmm7,%xmm0
	pxor	%xmm7,%xmm1
	pxor	%xmm15,%xmm6
	pxor	%xmm5,%xmm0
	pxor	%xmm6,%xmm3
	pxor	%xmm15,%xmm5
	pxor	%xmm0,%xmm15

	pxor	%xmm4,%xmm0
	pxor	%xmm1,%xmm4
	pxor	%xmm2,%xmm1
	pxor	%xmm4,%xmm2
	pxor	%xmm4,%xmm3

	pxor	%xmm2,%xmm5
	decl	%r10d
	jl	.Lenc_done
	pshufd	$147,%xmm15,%xmm7
	pshufd	$147,%xmm0,%xmm8
	pxor	%xmm7,%xmm15
	pshufd	$147,%xmm3,%xmm9
	pxor	%xmm8,%xmm0
	pshufd	$147,%xmm5,%xmm10
	pxor	%xmm9,%xmm3
	pshufd	$147,%xmm2,%xmm11
	pxor	%xmm10,%xmm5
	pshufd	$147,%xmm6,%xmm12
	pxor	%xmm11,%xmm2
	pshufd	$147,%xmm1,%xmm13
	pxor	%xmm12,%xmm6
	pshufd	$147,%xmm4,%xmm14
	pxor	%xmm13,%xmm1
	pxor	%xmm14,%xmm4

	pxor	%xmm15,%xmm8
	pxor	%xmm4,%xmm7
	pxor	%xmm4,%xmm8
	pshufd	$78,%xmm15,%xmm15
	pxor	%xmm0,%xmm9
	pshufd	$78,%xmm0,%xmm0
	pxor	%xmm2,%xmm12
	pxor	%xmm7,%xmm15
	pxor	%xmm6,%xmm13
	pxor	%xmm8,%xmm0
	pxor	%xmm5,%xmm11
	pshufd	$78,%xmm2,%xmm7
	pxor	%xmm1,%xmm14
	pshufd	$78,%xmm6,%xmm8
	pxor	%xmm3,%xmm10
	pshufd	$78,%xmm5,%xmm2
	pxor	%xmm4,%xmm10
	pshufd	$78,%xmm4,%xmm6
	pxor	%xmm4,%xmm11
	pshufd	$78,%xmm1,%xmm5
	pxor	%xmm11,%xmm7
	pshufd	$78,%xmm3,%xmm1
	pxor	%xmm12,%xmm8
	pxor	%xmm10,%xmm2
	pxor	%xmm14,%xmm6
	pxor	%xmm13,%xmm5
	movdqa	%xmm7,%xmm3
	pxor	%xmm9,%xmm1
	movdqa	%xmm8,%xmm4
	movdqa	48(%r11),%xmm7
	jnz	.Lenc_loop
	movdqa	64(%r11),%xmm7
	jmp	.Lenc_loop
.p2align	4
.Lenc_done:
	movdqa	0(%r11),%xmm7
	movdqa	16(%r11),%xmm8
	movdqa	%xmm1,%xmm9
	psrlq	$1,%xmm1
	movdqa	%xmm2,%xmm10
	psrlq	$1,%xmm2
	pxor	%xmm4,%xmm1
	pxor	%xmm6,%xmm2
	pand	%xmm7,%xmm1
	pand	%xmm7,%xmm2
	pxor	%xmm1,%xmm4
	psllq	$1,%xmm1
	pxor	%xmm2,%xmm6
	psllq	$1,%xmm2
	pxor	%xmm9,%xmm1
	pxor	%xmm10,%xmm2
	movdqa	%xmm3,%xmm9
	psrlq	$1,%xmm3
	movdqa	%xmm15,%xmm10
	psrlq	$1,%xmm15
	pxor	%xmm5,%xmm3
	pxor	%xmm0,%xmm15
	pand	%xmm7,%xmm3
	pand	%xmm7,%xmm15
	pxor	%xmm3,%xmm5
	psllq	$1,%xmm3
	pxor	%xmm15,%xmm0
	psllq	$1,%xmm15
	pxor	%xmm9,%xmm3
	pxor	%xmm10,%xmm15
	movdqa	32(%r11),%xmm7
	movdqa	%xmm6,%xmm9
	psrlq	$2,%xmm6
	movdqa	%xmm2,%xmm10
	psrlq	$2,%xmm2
	pxor	%xmm4,%xmm6
	pxor	%xmm1,%xmm2
	pand	%xmm8,%xmm6
	pand	%xmm8,%xmm2
	pxor	%xmm6,%xmm4
	psllq	$2,%xmm6
	pxor	%xmm2,%xmm1
	psllq	$2,%xmm2
	pxor	%xmm9,%xmm6
	pxor	%xmm10,%xmm2
	movdqa	%xmm0,%xmm9
	psrlq	$2,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$2,%xmm15
	pxor	%xmm5,%xmm0
	pxor	%xmm3,%xmm15
	pand	%xmm8,%xmm0
	pand	%xmm8,%xmm15
	pxor	%xmm0,%xmm5
	psllq	$2,%xmm0
	pxor	%xmm15,%xmm3
	psllq	$2,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	movdqa	%xmm5,%xmm9
	psrlq	$4,%xmm5
	movdqa	%xmm3,%xmm10
	psrlq	$4,%xmm3
	pxor	%xmm4,%xmm5
	pxor	%xmm1,%xmm3
	pand	%xmm7,%xmm5
	pand	%xmm7,%xmm3
	pxor	%xmm5,%xmm4
	psllq	$4,%xmm5
	pxor	%xmm3,%xmm1
	psllq	$4,%xmm3
	pxor	%xmm9,%xmm5
	pxor	%xmm10,%xmm3
	movdqa	%xmm0,%xmm9
	psrlq	$4,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$4,%xmm15
	pxor	%xmm6,%xmm0
	pxor	%xmm2,%xmm15
	pand	%xmm7,%xmm0
	pand	%xmm7,%xmm15
	pxor	%xmm0,%xmm6
	psllq	$4,%xmm0
	pxor	%xmm15,%xmm2
	psllq	$4,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	movdqa	(%rax),%xmm7
	pxor	%xmm7,%xmm3
	pxor	%xmm7,%xmm5
	pxor	%xmm7,%xmm2
	pxor	%xmm7,%xmm6
	pxor	%xmm7,%xmm1
	pxor	%xmm7,%xmm4
	pxor	%xmm7,%xmm15
	pxor	%xmm7,%xmm0
	.byte	0xf3,0xc3


.def	_bsaes_decrypt8;	.scl 3;	.type 32;	.endef
.p2align	6
_bsaes_decrypt8:
	leaq	.LBS0(%rip),%r11

	movdqa	(%rax),%xmm8
	leaq	16(%rax),%rax
	movdqa	-48(%r11),%xmm7
	pxor	%xmm8,%xmm15
	pxor	%xmm8,%xmm0
.byte	102,68,15,56,0,255
	pxor	%xmm8,%xmm1
.byte	102,15,56,0,199
	pxor	%xmm8,%xmm2
.byte	102,15,56,0,207
	pxor	%xmm8,%xmm3
.byte	102,15,56,0,215
	pxor	%xmm8,%xmm4
.byte	102,15,56,0,223
	pxor	%xmm8,%xmm5
.byte	102,15,56,0,231
	pxor	%xmm8,%xmm6
.byte	102,15,56,0,239
.byte	102,15,56,0,247
	movdqa	0(%r11),%xmm7
	movdqa	16(%r11),%xmm8
	movdqa	%xmm5,%xmm9
	psrlq	$1,%xmm5
	movdqa	%xmm3,%xmm10
	psrlq	$1,%xmm3
	pxor	%xmm6,%xmm5
	pxor	%xmm4,%xmm3
	pand	%xmm7,%xmm5
	pand	%xmm7,%xmm3
	pxor	%xmm5,%xmm6
	psllq	$1,%xmm5
	pxor	%xmm3,%xmm4
	psllq	$1,%xmm3
	pxor	%xmm9,%xmm5
	pxor	%xmm10,%xmm3
	movdqa	%xmm1,%xmm9
	psrlq	$1,%xmm1
	movdqa	%xmm15,%xmm10
	psrlq	$1,%xmm15
	pxor	%xmm2,%xmm1
	pxor	%xmm0,%xmm15
	pand	%xmm7,%xmm1
	pand	%xmm7,%xmm15
	pxor	%xmm1,%xmm2
	psllq	$1,%xmm1
	pxor	%xmm15,%xmm0
	psllq	$1,%xmm15
	pxor	%xmm9,%xmm1
	pxor	%xmm10,%xmm15
	movdqa	32(%r11),%xmm7
	movdqa	%xmm4,%xmm9
	psrlq	$2,%xmm4
	movdqa	%xmm3,%xmm10
	psrlq	$2,%xmm3
	pxor	%xmm6,%xmm4
	pxor	%xmm5,%xmm3
	pand	%xmm8,%xmm4
	pand	%xmm8,%xmm3
	pxor	%xmm4,%xmm6
	psllq	$2,%xmm4
	pxor	%xmm3,%xmm5
	psllq	$2,%xmm3
	pxor	%xmm9,%xmm4
	pxor	%xmm10,%xmm3
	movdqa	%xmm0,%xmm9
	psrlq	$2,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$2,%xmm15
	pxor	%xmm2,%xmm0
	pxor	%xmm1,%xmm15
	pand	%xmm8,%xmm0
	pand	%xmm8,%xmm15
	pxor	%xmm0,%xmm2
	psllq	$2,%xmm0
	pxor	%xmm15,%xmm1
	psllq	$2,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	movdqa	%xmm2,%xmm9
	psrlq	$4,%xmm2
	movdqa	%xmm1,%xmm10
	psrlq	$4,%xmm1
	pxor	%xmm6,%xmm2
	pxor	%xmm5,%xmm1
	pand	%xmm7,%xmm2
	pand	%xmm7,%xmm1
	pxor	%xmm2,%xmm6
	psllq	$4,%xmm2
	pxor	%xmm1,%xmm5
	psllq	$4,%xmm1
	pxor	%xmm9,%xmm2
	pxor	%xmm10,%xmm1
	movdqa	%xmm0,%xmm9
	psrlq	$4,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$4,%xmm15
	pxor	%xmm4,%xmm0
	pxor	%xmm3,%xmm15
	pand	%xmm7,%xmm0
	pand	%xmm7,%xmm15
	pxor	%xmm0,%xmm4
	psllq	$4,%xmm0
	pxor	%xmm15,%xmm3
	psllq	$4,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	decl	%r10d
	jmp	.Ldec_sbox
.p2align	4
.Ldec_loop:
	pxor	0(%rax),%xmm15
	pxor	16(%rax),%xmm0
.byte	102,68,15,56,0,255
	pxor	32(%rax),%xmm1
.byte	102,15,56,0,199
	pxor	48(%rax),%xmm2
.byte	102,15,56,0,207
	pxor	64(%rax),%xmm3
.byte	102,15,56,0,215
	pxor	80(%rax),%xmm4
.byte	102,15,56,0,223
	pxor	96(%rax),%xmm5
.byte	102,15,56,0,231
	pxor	112(%rax),%xmm6
.byte	102,15,56,0,239
	leaq	128(%rax),%rax
.byte	102,15,56,0,247
.Ldec_sbox:
	pxor	%xmm3,%xmm2

	pxor	%xmm6,%xmm3
	pxor	%xmm6,%xmm1
	pxor	%xmm3,%xmm5
	pxor	%xmm5,%xmm6
	pxor	%xmm6,%xmm0

	pxor	%xmm0,%xmm15
	pxor	%xmm4,%xmm1
	pxor	%xmm15,%xmm2
	pxor	%xmm15,%xmm4
	pxor	%xmm2,%xmm0
	movdqa	%xmm2,%xmm10
	movdqa	%xmm6,%xmm9
	movdqa	%xmm0,%xmm8
	movdqa	%xmm3,%xmm12
	movdqa	%xmm4,%xmm11

	pxor	%xmm15,%xmm10
	pxor	%xmm3,%xmm9
	pxor	%xmm5,%xmm8
	movdqa	%xmm10,%xmm13
	pxor	%xmm15,%xmm12
	movdqa	%xmm9,%xmm7
	pxor	%xmm1,%xmm11
	movdqa	%xmm10,%xmm14

	por	%xmm8,%xmm9
	por	%xmm11,%xmm10
	pxor	%xmm7,%xmm14
	pand	%xmm11,%xmm13
	pxor	%xmm8,%xmm11
	pand	%xmm8,%xmm7
	pand	%xmm11,%xmm14
	movdqa	%xmm5,%xmm11
	pxor	%xmm1,%xmm11
	pand	%xmm11,%xmm12
	pxor	%xmm12,%xmm10
	pxor	%xmm12,%xmm9
	movdqa	%xmm2,%xmm12
	movdqa	%xmm0,%xmm11
	pxor	%xmm6,%xmm12
	pxor	%xmm4,%xmm11
	movdqa	%xmm12,%xmm8
	pand	%xmm11,%xmm12
	por	%xmm11,%xmm8
	pxor	%xmm12,%xmm7
	pxor	%xmm14,%xmm10
	pxor	%xmm13,%xmm9
	pxor	%xmm14,%xmm8
	movdqa	%xmm3,%xmm11
	pxor	%xmm13,%xmm7
	movdqa	%xmm15,%xmm12
	pxor	%xmm13,%xmm8
	movdqa	%xmm6,%xmm13
	pand	%xmm5,%xmm11
	movdqa	%xmm2,%xmm14
	pand	%xmm1,%xmm12
	pand	%xmm0,%xmm13
	por	%xmm4,%xmm14
	pxor	%xmm11,%xmm10
	pxor	%xmm12,%xmm9
	pxor	%xmm13,%xmm8
	pxor	%xmm14,%xmm7





	movdqa	%xmm10,%xmm11
	pand	%xmm8,%xmm10
	pxor	%xmm9,%xmm11

	movdqa	%xmm7,%xmm13
	movdqa	%xmm11,%xmm14
	pxor	%xmm10,%xmm13
	pand	%xmm13,%xmm14

	movdqa	%xmm8,%xmm12
	pxor	%xmm9,%xmm14
	pxor	%xmm7,%xmm12

	pxor	%xmm9,%xmm10

	pand	%xmm10,%xmm12

	movdqa	%xmm13,%xmm9
	pxor	%xmm7,%xmm12

	pxor	%xmm12,%xmm9
	pxor	%xmm12,%xmm8

	pand	%xmm7,%xmm9

	pxor	%xmm9,%xmm13
	pxor	%xmm9,%xmm8

	pand	%xmm14,%xmm13

	pxor	%xmm11,%xmm13
	movdqa	%xmm4,%xmm11
	movdqa	%xmm0,%xmm7
	movdqa	%xmm14,%xmm9
	pxor	%xmm13,%xmm9
	pand	%xmm4,%xmm9
	pxor	%xmm0,%xmm4
	pand	%xmm14,%xmm0
	pand	%xmm13,%xmm4
	pxor	%xmm0,%xmm4
	pxor	%xmm9,%xmm0
	pxor	%xmm1,%xmm11
	pxor	%xmm5,%xmm7
	pxor	%xmm12,%xmm14
	pxor	%xmm8,%xmm13
	movdqa	%xmm14,%xmm10
	movdqa	%xmm12,%xmm9
	pxor	%xmm13,%xmm10
	pxor	%xmm8,%xmm9
	pand	%xmm11,%xmm10
	pand	%xmm1,%xmm9
	pxor	%xmm7,%xmm11
	pxor	%xmm5,%xmm1
	pand	%xmm14,%xmm7
	pand	%xmm12,%xmm5
	pand	%xmm13,%xmm11
	pand	%xmm8,%xmm1
	pxor	%xmm11,%xmm7
	pxor	%xmm5,%xmm1
	pxor	%xmm10,%xmm11
	pxor	%xmm9,%xmm5
	pxor	%xmm11,%xmm4
	pxor	%xmm11,%xmm1
	pxor	%xmm7,%xmm0
	pxor	%xmm7,%xmm5

	movdqa	%xmm2,%xmm11
	movdqa	%xmm6,%xmm7
	pxor	%xmm15,%xmm11
	pxor	%xmm3,%xmm7
	movdqa	%xmm14,%xmm10
	movdqa	%xmm12,%xmm9
	pxor	%xmm13,%xmm10
	pxor	%xmm8,%xmm9
	pand	%xmm11,%xmm10
	pand	%xmm15,%xmm9
	pxor	%xmm7,%xmm11
	pxor	%xmm3,%xmm15
	pand	%xmm14,%xmm7
	pand	%xmm12,%xmm3
	pand	%xmm13,%xmm11
	pand	%xmm8,%xmm15
	pxor	%xmm11,%xmm7
	pxor	%xmm3,%xmm15
	pxor	%xmm10,%xmm11
	pxor	%xmm9,%xmm3
	pxor	%xmm12,%xmm14
	pxor	%xmm8,%xmm13
	movdqa	%xmm14,%xmm10
	pxor	%xmm13,%xmm10
	pand	%xmm2,%xmm10
	pxor	%xmm6,%xmm2
	pand	%xmm14,%xmm6
	pand	%xmm13,%xmm2
	pxor	%xmm6,%xmm2
	pxor	%xmm10,%xmm6
	pxor	%xmm11,%xmm2
	pxor	%xmm11,%xmm15
	pxor	%xmm7,%xmm6
	pxor	%xmm7,%xmm3
	pxor	%xmm6,%xmm0
	pxor	%xmm4,%xmm5

	pxor	%xmm0,%xmm3
	pxor	%xmm6,%xmm1
	pxor	%xmm6,%xmm4
	pxor	%xmm1,%xmm3
	pxor	%xmm15,%xmm6
	pxor	%xmm4,%xmm3
	pxor	%xmm5,%xmm2
	pxor	%xmm0,%xmm5
	pxor	%xmm3,%xmm2

	pxor	%xmm15,%xmm3
	pxor	%xmm2,%xmm6
	decl	%r10d
	jl	.Ldec_done

	pshufd	$78,%xmm15,%xmm7
	pshufd	$78,%xmm2,%xmm13
	pxor	%xmm15,%xmm7
	pshufd	$78,%xmm4,%xmm14
	pxor	%xmm2,%xmm13
	pshufd	$78,%xmm0,%xmm8
	pxor	%xmm4,%xmm14
	pshufd	$78,%xmm5,%xmm9
	pxor	%xmm0,%xmm8
	pshufd	$78,%xmm3,%xmm10
	pxor	%xmm5,%xmm9
	pxor	%xmm13,%xmm15
	pxor	%xmm13,%xmm0
	pshufd	$78,%xmm1,%xmm11
	pxor	%xmm3,%xmm10
	pxor	%xmm7,%xmm5
	pxor	%xmm8,%xmm3
	pshufd	$78,%xmm6,%xmm12
	pxor	%xmm1,%xmm11
	pxor	%xmm14,%xmm0
	pxor	%xmm9,%xmm1
	pxor	%xmm6,%xmm12

	pxor	%xmm14,%xmm5
	pxor	%xmm13,%xmm3
	pxor	%xmm13,%xmm1
	pxor	%xmm10,%xmm6
	pxor	%xmm11,%xmm2
	pxor	%xmm14,%xmm1
	pxor	%xmm14,%xmm6
	pxor	%xmm12,%xmm4
	pshufd	$147,%xmm15,%xmm7
	pshufd	$147,%xmm0,%xmm8
	pxor	%xmm7,%xmm15
	pshufd	$147,%xmm5,%xmm9
	pxor	%xmm8,%xmm0
	pshufd	$147,%xmm3,%xmm10
	pxor	%xmm9,%xmm5
	pshufd	$147,%xmm1,%xmm11
	pxor	%xmm10,%xmm3
	pshufd	$147,%xmm6,%xmm12
	pxor	%xmm11,%xmm1
	pshufd	$147,%xmm2,%xmm13
	pxor	%xmm12,%xmm6
	pshufd	$147,%xmm4,%xmm14
	pxor	%xmm13,%xmm2
	pxor	%xmm14,%xmm4

	pxor	%xmm15,%xmm8
	pxor	%xmm4,%xmm7
	pxor	%xmm4,%xmm8
	pshufd	$78,%xmm15,%xmm15
	pxor	%xmm0,%xmm9
	pshufd	$78,%xmm0,%xmm0
	pxor	%xmm1,%xmm12
	pxor	%xmm7,%xmm15
	pxor	%xmm6,%xmm13
	pxor	%xmm8,%xmm0
	pxor	%xmm3,%xmm11
	pshufd	$78,%xmm1,%xmm7
	pxor	%xmm2,%xmm14
	pshufd	$78,%xmm6,%xmm8
	pxor	%xmm5,%xmm10
	pshufd	$78,%xmm3,%xmm1
	pxor	%xmm4,%xmm10
	pshufd	$78,%xmm4,%xmm6
	pxor	%xmm4,%xmm11
	pshufd	$78,%xmm2,%xmm3
	pxor	%xmm11,%xmm7
	pshufd	$78,%xmm5,%xmm2
	pxor	%xmm12,%xmm8
	pxor	%xmm1,%xmm10
	pxor	%xmm14,%xmm6
	pxor	%xmm3,%xmm13
	movdqa	%xmm7,%xmm3
	pxor	%xmm9,%xmm2
	movdqa	%xmm13,%xmm5
	movdqa	%xmm8,%xmm4
	movdqa	%xmm2,%xmm1
	movdqa	%xmm10,%xmm2
	movdqa	-16(%r11),%xmm7
	jnz	.Ldec_loop
	movdqa	-32(%r11),%xmm7
	jmp	.Ldec_loop
.p2align	4
.Ldec_done:
	movdqa	0(%r11),%xmm7
	movdqa	16(%r11),%xmm8
	movdqa	%xmm2,%xmm9
	psrlq	$1,%xmm2
	movdqa	%xmm1,%xmm10
	psrlq	$1,%xmm1
	pxor	%xmm4,%xmm2
	pxor	%xmm6,%xmm1
	pand	%xmm7,%xmm2
	pand	%xmm7,%xmm1
	pxor	%xmm2,%xmm4
	psllq	$1,%xmm2
	pxor	%xmm1,%xmm6
	psllq	$1,%xmm1
	pxor	%xmm9,%xmm2
	pxor	%xmm10,%xmm1
	movdqa	%xmm5,%xmm9
	psrlq	$1,%xmm5
	movdqa	%xmm15,%xmm10
	psrlq	$1,%xmm15
	pxor	%xmm3,%xmm5
	pxor	%xmm0,%xmm15
	pand	%xmm7,%xmm5
	pand	%xmm7,%xmm15
	pxor	%xmm5,%xmm3
	psllq	$1,%xmm5
	pxor	%xmm15,%xmm0
	psllq	$1,%xmm15
	pxor	%xmm9,%xmm5
	pxor	%xmm10,%xmm15
	movdqa	32(%r11),%xmm7
	movdqa	%xmm6,%xmm9
	psrlq	$2,%xmm6
	movdqa	%xmm1,%xmm10
	psrlq	$2,%xmm1
	pxor	%xmm4,%xmm6
	pxor	%xmm2,%xmm1
	pand	%xmm8,%xmm6
	pand	%xmm8,%xmm1
	pxor	%xmm6,%xmm4
	psllq	$2,%xmm6
	pxor	%xmm1,%xmm2
	psllq	$2,%xmm1
	pxor	%xmm9,%xmm6
	pxor	%xmm10,%xmm1
	movdqa	%xmm0,%xmm9
	psrlq	$2,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$2,%xmm15
	pxor	%xmm3,%xmm0
	pxor	%xmm5,%xmm15
	pand	%xmm8,%xmm0
	pand	%xmm8,%xmm15
	pxor	%xmm0,%xmm3
	psllq	$2,%xmm0
	pxor	%xmm15,%xmm5
	psllq	$2,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	movdqa	%xmm3,%xmm9
	psrlq	$4,%xmm3
	movdqa	%xmm5,%xmm10
	psrlq	$4,%xmm5
	pxor	%xmm4,%xmm3
	pxor	%xmm2,%xmm5
	pand	%xmm7,%xmm3
	pand	%xmm7,%xmm5
	pxor	%xmm3,%xmm4
	psllq	$4,%xmm3
	pxor	%xmm5,%xmm2
	psllq	$4,%xmm5
	pxor	%xmm9,%xmm3
	pxor	%xmm10,%xmm5
	movdqa	%xmm0,%xmm9
	psrlq	$4,%xmm0
	movdqa	%xmm15,%xmm10
	psrlq	$4,%xmm15
	pxor	%xmm6,%xmm0
	pxor	%xmm1,%xmm15
	pand	%xmm7,%xmm0
	pand	%xmm7,%xmm15
	pxor	%xmm0,%xmm6
	psllq	$4,%xmm0
	pxor	%xmm15,%xmm1
	psllq	$4,%xmm15
	pxor	%xmm9,%xmm0
	pxor	%xmm10,%xmm15
	movdqa	(%rax),%xmm7
	pxor	%xmm7,%xmm5
	pxor	%xmm7,%xmm3
	pxor	%xmm7,%xmm1
	pxor	%xmm7,%xmm6
	pxor	%xmm7,%xmm2
	pxor	%xmm7,%xmm4
	pxor	%xmm7,%xmm15
	pxor	%xmm7,%xmm0
	.byte	0xf3,0xc3

.def	_bsaes_key_convert;	.scl 3;	.type 32;	.endef
.p2align	4
_bsaes_key_convert:
	leaq	.Lmasks(%rip),%r11
	movdqu	(%rcx),%xmm7
	leaq	16(%rcx),%rcx
	movdqa	0(%r11),%xmm0
	movdqa	16(%r11),%xmm1
	movdqa	32(%r11),%xmm2
	movdqa	48(%r11),%xmm3
	movdqa	64(%r11),%xmm4
	pcmpeqd	%xmm5,%xmm5

	movdqu	(%rcx),%xmm6
	movdqa	%xmm7,(%rax)
	leaq	16(%rax),%rax
	decl	%r10d
	jmp	.Lkey_loop
.p2align	4
.Lkey_loop:
.byte	102,15,56,0,244

	movdqa	%xmm0,%xmm8
	movdqa	%xmm1,%xmm9

	pand	%xmm6,%xmm8
	pand	%xmm6,%xmm9
	movdqa	%xmm2,%xmm10
	pcmpeqb	%xmm0,%xmm8
	psllq	$4,%xmm0
	movdqa	%xmm3,%xmm11
	pcmpeqb	%xmm1,%xmm9
	psllq	$4,%xmm1

	pand	%xmm6,%xmm10
	pand	%xmm6,%xmm11
	movdqa	%xmm0,%xmm12
	pcmpeqb	%xmm2,%xmm10
	psllq	$4,%xmm2
	movdqa	%xmm1,%xmm13
	pcmpeqb	%xmm3,%xmm11
	psllq	$4,%xmm3

	movdqa	%xmm2,%xmm14
	movdqa	%xmm3,%xmm15
	pxor	%xmm5,%xmm8
	pxor	%xmm5,%xmm9

	pand	%xmm6,%xmm12
	pand	%xmm6,%xmm13
	movdqa	%xmm8,0(%rax)
	pcmpeqb	%xmm0,%xmm12
	psrlq	$4,%xmm0
	movdqa	%xmm9,16(%rax)
	pcmpeqb	%xmm1,%xmm13
	psrlq	$4,%xmm1
	leaq	16(%rcx),%rcx

	pand	%xmm6,%xmm14
	pand	%xmm6,%xmm15
	movdqa	%xmm10,32(%rax)
	pcmpeqb	%xmm2,%xmm14
	psrlq	$4,%xmm2
	movdqa	%xmm11,48(%rax)
	pcmpeqb	%xmm3,%xmm15
	psrlq	$4,%xmm3
	movdqu	(%rcx),%xmm6

	pxor	%xmm5,%xmm13
	pxor	%xmm5,%xmm14
	movdqa	%xmm12,64(%rax)
	movdqa	%xmm13,80(%rax)
	movdqa	%xmm14,96(%rax)
	movdqa	%xmm15,112(%rax)
	leaq	128(%rax),%rax
	decl	%r10d
	jnz	.Lkey_loop

	movdqa	80(%r11),%xmm7

	.byte	0xf3,0xc3


.globl	bsaes_cbc_encrypt
.def	bsaes_cbc_encrypt;	.scl 2;	.type 32;	.endef
.p2align	4
bsaes_cbc_encrypt:
	movl	48(%rsp),%r11d
	cmpl	$0,%r11d
	jne	asm_AES_cbc_encrypt
	cmpq	$128,%r8
	jb	asm_AES_cbc_encrypt

	movq	%rsp,%rax
.Lcbc_dec_prologue:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	leaq	-72(%rsp),%rsp
	movq	160(%rsp),%r10
	leaq	-160(%rsp),%rsp
	movaps	%xmm6,64(%rsp)
	movaps	%xmm7,80(%rsp)
	movaps	%xmm8,96(%rsp)
	movaps	%xmm9,112(%rsp)
	movaps	%xmm10,128(%rsp)
	movaps	%xmm11,144(%rsp)
	movaps	%xmm12,160(%rsp)
	movaps	%xmm13,176(%rsp)
	movaps	%xmm14,192(%rsp)
	movaps	%xmm15,208(%rsp)
.Lcbc_dec_body:
	movq	%rsp,%rbp
	movl	240(%r9),%eax
	movq	%rcx,%r12
	movq	%rdx,%r13
	movq	%r8,%r14
	movq	%r9,%r15
	movq	%r10,%rbx
	shrq	$4,%r14

	movl	%eax,%edx
	shlq	$7,%rax
	subq	$96,%rax
	subq	%rax,%rsp

	movq	%rsp,%rax
	movq	%r15,%rcx
	movl	%edx,%r10d
	call	_bsaes_key_convert
	pxor	(%rsp),%xmm7
	movdqa	%xmm6,(%rax)
	movdqa	%xmm7,(%rsp)

	movdqu	(%rbx),%xmm14
	subq	$8,%r14
.Lcbc_dec_loop:
	movdqu	0(%r12),%xmm15
	movdqu	16(%r12),%xmm0
	movdqu	32(%r12),%xmm1
	movdqu	48(%r12),%xmm2
	movdqu	64(%r12),%xmm3
	movdqu	80(%r12),%xmm4
	movq	%rsp,%rax
	movdqu	96(%r12),%xmm5
	movl	%edx,%r10d
	movdqu	112(%r12),%xmm6
	movdqa	%xmm14,32(%rbp)

	call	_bsaes_decrypt8

	pxor	32(%rbp),%xmm15
	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm0
	movdqu	32(%r12),%xmm9
	pxor	%xmm8,%xmm5
	movdqu	48(%r12),%xmm10
	pxor	%xmm9,%xmm3
	movdqu	64(%r12),%xmm11
	pxor	%xmm10,%xmm1
	movdqu	80(%r12),%xmm12
	pxor	%xmm11,%xmm6
	movdqu	96(%r12),%xmm13
	pxor	%xmm12,%xmm2
	movdqu	112(%r12),%xmm14
	pxor	%xmm13,%xmm4
	movdqu	%xmm15,0(%r13)
	leaq	128(%r12),%r12
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm5,32(%r13)
	movdqu	%xmm3,48(%r13)
	movdqu	%xmm1,64(%r13)
	movdqu	%xmm6,80(%r13)
	movdqu	%xmm2,96(%r13)
	movdqu	%xmm4,112(%r13)
	leaq	128(%r13),%r13
	subq	$8,%r14
	jnc	.Lcbc_dec_loop

	addq	$8,%r14
	jz	.Lcbc_dec_done

	movdqu	0(%r12),%xmm15
	movq	%rsp,%rax
	movl	%edx,%r10d
	cmpq	$2,%r14
	jb	.Lcbc_dec_one
	movdqu	16(%r12),%xmm0
	je	.Lcbc_dec_two
	movdqu	32(%r12),%xmm1
	cmpq	$4,%r14
	jb	.Lcbc_dec_three
	movdqu	48(%r12),%xmm2
	je	.Lcbc_dec_four
	movdqu	64(%r12),%xmm3
	cmpq	$6,%r14
	jb	.Lcbc_dec_five
	movdqu	80(%r12),%xmm4
	je	.Lcbc_dec_six
	movdqu	96(%r12),%xmm5
	movdqa	%xmm14,32(%rbp)
	call	_bsaes_decrypt8
	pxor	32(%rbp),%xmm15
	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm0
	movdqu	32(%r12),%xmm9
	pxor	%xmm8,%xmm5
	movdqu	48(%r12),%xmm10
	pxor	%xmm9,%xmm3
	movdqu	64(%r12),%xmm11
	pxor	%xmm10,%xmm1
	movdqu	80(%r12),%xmm12
	pxor	%xmm11,%xmm6
	movdqu	96(%r12),%xmm14
	pxor	%xmm12,%xmm2
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm5,32(%r13)
	movdqu	%xmm3,48(%r13)
	movdqu	%xmm1,64(%r13)
	movdqu	%xmm6,80(%r13)
	movdqu	%xmm2,96(%r13)
	jmp	.Lcbc_dec_done
.p2align	4
.Lcbc_dec_six:
	movdqa	%xmm14,32(%rbp)
	call	_bsaes_decrypt8
	pxor	32(%rbp),%xmm15
	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm0
	movdqu	32(%r12),%xmm9
	pxor	%xmm8,%xmm5
	movdqu	48(%r12),%xmm10
	pxor	%xmm9,%xmm3
	movdqu	64(%r12),%xmm11
	pxor	%xmm10,%xmm1
	movdqu	80(%r12),%xmm14
	pxor	%xmm11,%xmm6
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm5,32(%r13)
	movdqu	%xmm3,48(%r13)
	movdqu	%xmm1,64(%r13)
	movdqu	%xmm6,80(%r13)
	jmp	.Lcbc_dec_done
.p2align	4
.Lcbc_dec_five:
	movdqa	%xmm14,32(%rbp)
	call	_bsaes_decrypt8
	pxor	32(%rbp),%xmm15
	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm0
	movdqu	32(%r12),%xmm9
	pxor	%xmm8,%xmm5
	movdqu	48(%r12),%xmm10
	pxor	%xmm9,%xmm3
	movdqu	64(%r12),%xmm14
	pxor	%xmm10,%xmm1
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm5,32(%r13)
	movdqu	%xmm3,48(%r13)
	movdqu	%xmm1,64(%r13)
	jmp	.Lcbc_dec_done
.p2align	4
.Lcbc_dec_four:
	movdqa	%xmm14,32(%rbp)
	call	_bsaes_decrypt8
	pxor	32(%rbp),%xmm15
	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm0
	movdqu	32(%r12),%xmm9
	pxor	%xmm8,%xmm5
	movdqu	48(%r12),%xmm14
	pxor	%xmm9,%xmm3
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm5,32(%r13)
	movdqu	%xmm3,48(%r13)
	jmp	.Lcbc_dec_done
.p2align	4
.Lcbc_dec_three:
	movdqa	%xmm14,32(%rbp)
	call	_bsaes_decrypt8
	pxor	32(%rbp),%xmm15
	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm0
	movdqu	32(%r12),%xmm14
	pxor	%xmm8,%xmm5
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm5,32(%r13)
	jmp	.Lcbc_dec_done
.p2align	4
.Lcbc_dec_two:
	movdqa	%xmm14,32(%rbp)
	call	_bsaes_decrypt8
	pxor	32(%rbp),%xmm15
	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm14
	pxor	%xmm7,%xmm0
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	jmp	.Lcbc_dec_done
.p2align	4
.Lcbc_dec_one:
	leaq	(%r12),%rcx
	leaq	32(%rbp),%rdx
	leaq	(%r15),%r8
	call	asm_AES_decrypt		
	pxor	32(%rbp),%xmm14
	movdqu	%xmm14,(%r13)
	movdqa	%xmm15,%xmm14

.Lcbc_dec_done:
	movdqu	%xmm14,(%rbx)
	leaq	(%rsp),%rax
	pxor	%xmm0,%xmm0
.Lcbc_dec_bzero:
	movdqa	%xmm0,0(%rax)
	movdqa	%xmm0,16(%rax)
	leaq	32(%rax),%rax
	cmpq	%rax,%rbp
	ja	.Lcbc_dec_bzero

	leaq	(%rbp),%rsp
	movaps	64(%rbp),%xmm6
	movaps	80(%rbp),%xmm7
	movaps	96(%rbp),%xmm8
	movaps	112(%rbp),%xmm9
	movaps	128(%rbp),%xmm10
	movaps	144(%rbp),%xmm11
	movaps	160(%rbp),%xmm12
	movaps	176(%rbp),%xmm13
	movaps	192(%rbp),%xmm14
	movaps	208(%rbp),%xmm15
	leaq	160(%rbp),%rsp
	movq	72(%rsp),%r15
	movq	80(%rsp),%r14
	movq	88(%rsp),%r13
	movq	96(%rsp),%r12
	movq	104(%rsp),%rbx
	movq	112(%rsp),%rax
	leaq	120(%rsp),%rsp
	movq	%rax,%rbp
.Lcbc_dec_epilogue:
	.byte	0xf3,0xc3


.globl	bsaes_ctr32_encrypt_blocks
.def	bsaes_ctr32_encrypt_blocks;	.scl 2;	.type 32;	.endef
.p2align	4
bsaes_ctr32_encrypt_blocks:
	movq	%rsp,%rax
.Lctr_enc_prologue:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	leaq	-72(%rsp),%rsp
	movq	160(%rsp),%r10
	leaq	-160(%rsp),%rsp
	movaps	%xmm6,64(%rsp)
	movaps	%xmm7,80(%rsp)
	movaps	%xmm8,96(%rsp)
	movaps	%xmm9,112(%rsp)
	movaps	%xmm10,128(%rsp)
	movaps	%xmm11,144(%rsp)
	movaps	%xmm12,160(%rsp)
	movaps	%xmm13,176(%rsp)
	movaps	%xmm14,192(%rsp)
	movaps	%xmm15,208(%rsp)
.Lctr_enc_body:
	movq	%rsp,%rbp
	movdqu	(%r10),%xmm0
	movl	240(%r9),%eax
	movq	%rcx,%r12
	movq	%rdx,%r13
	movq	%r8,%r14
	movq	%r9,%r15
	movdqa	%xmm0,32(%rbp)
	cmpq	$8,%r8
	jb	.Lctr_enc_short

	movl	%eax,%ebx
	shlq	$7,%rax
	subq	$96,%rax
	subq	%rax,%rsp

	movq	%rsp,%rax
	movq	%r15,%rcx
	movl	%ebx,%r10d
	call	_bsaes_key_convert
	pxor	%xmm6,%xmm7
	movdqa	%xmm7,(%rax)

	movdqa	(%rsp),%xmm8
	leaq	.LADD1(%rip),%r11
	movdqa	32(%rbp),%xmm15
	movdqa	-32(%r11),%xmm7
.byte	102,68,15,56,0,199
.byte	102,68,15,56,0,255
	movdqa	%xmm8,(%rsp)
	jmp	.Lctr_enc_loop
.p2align	4
.Lctr_enc_loop:
	movdqa	%xmm15,32(%rbp)
	movdqa	%xmm15,%xmm0
	movdqa	%xmm15,%xmm1
	paddd	0(%r11),%xmm0
	movdqa	%xmm15,%xmm2
	paddd	16(%r11),%xmm1
	movdqa	%xmm15,%xmm3
	paddd	32(%r11),%xmm2
	movdqa	%xmm15,%xmm4
	paddd	48(%r11),%xmm3
	movdqa	%xmm15,%xmm5
	paddd	64(%r11),%xmm4
	movdqa	%xmm15,%xmm6
	paddd	80(%r11),%xmm5
	paddd	96(%r11),%xmm6



	movdqa	(%rsp),%xmm8
	leaq	16(%rsp),%rax
	movdqa	-16(%r11),%xmm7
	pxor	%xmm8,%xmm15
	pxor	%xmm8,%xmm0
.byte	102,68,15,56,0,255
	pxor	%xmm8,%xmm1
.byte	102,15,56,0,199
	pxor	%xmm8,%xmm2
.byte	102,15,56,0,207
	pxor	%xmm8,%xmm3
.byte	102,15,56,0,215
	pxor	%xmm8,%xmm4
.byte	102,15,56,0,223
	pxor	%xmm8,%xmm5
.byte	102,15,56,0,231
	pxor	%xmm8,%xmm6
.byte	102,15,56,0,239
	leaq	.LBS0(%rip),%r11
.byte	102,15,56,0,247
	movl	%ebx,%r10d

	call	_bsaes_encrypt8_bitslice

	subq	$8,%r14
	jc	.Lctr_enc_loop_done

	movdqu	0(%r12),%xmm7
	movdqu	16(%r12),%xmm8
	movdqu	32(%r12),%xmm9
	movdqu	48(%r12),%xmm10
	movdqu	64(%r12),%xmm11
	movdqu	80(%r12),%xmm12
	movdqu	96(%r12),%xmm13
	movdqu	112(%r12),%xmm14
	leaq	128(%r12),%r12
	pxor	%xmm15,%xmm7
	movdqa	32(%rbp),%xmm15
	pxor	%xmm8,%xmm0
	movdqu	%xmm7,0(%r13)
	pxor	%xmm9,%xmm3
	movdqu	%xmm0,16(%r13)
	pxor	%xmm10,%xmm5
	movdqu	%xmm3,32(%r13)
	pxor	%xmm11,%xmm2
	movdqu	%xmm5,48(%r13)
	pxor	%xmm12,%xmm6
	movdqu	%xmm2,64(%r13)
	pxor	%xmm13,%xmm1
	movdqu	%xmm6,80(%r13)
	pxor	%xmm14,%xmm4
	movdqu	%xmm1,96(%r13)
	leaq	.LADD1(%rip),%r11
	movdqu	%xmm4,112(%r13)
	leaq	128(%r13),%r13
	paddd	112(%r11),%xmm15
	jnz	.Lctr_enc_loop

	jmp	.Lctr_enc_done
.p2align	4
.Lctr_enc_loop_done:
	addq	$8,%r14
	movdqu	0(%r12),%xmm7
	pxor	%xmm7,%xmm15
	movdqu	%xmm15,0(%r13)
	cmpq	$2,%r14
	jb	.Lctr_enc_done
	movdqu	16(%r12),%xmm8
	pxor	%xmm8,%xmm0
	movdqu	%xmm0,16(%r13)
	je	.Lctr_enc_done
	movdqu	32(%r12),%xmm9
	pxor	%xmm9,%xmm3
	movdqu	%xmm3,32(%r13)
	cmpq	$4,%r14
	jb	.Lctr_enc_done
	movdqu	48(%r12),%xmm10
	pxor	%xmm10,%xmm5
	movdqu	%xmm5,48(%r13)
	je	.Lctr_enc_done
	movdqu	64(%r12),%xmm11
	pxor	%xmm11,%xmm2
	movdqu	%xmm2,64(%r13)
	cmpq	$6,%r14
	jb	.Lctr_enc_done
	movdqu	80(%r12),%xmm12
	pxor	%xmm12,%xmm6
	movdqu	%xmm6,80(%r13)
	je	.Lctr_enc_done
	movdqu	96(%r12),%xmm13
	pxor	%xmm13,%xmm1
	movdqu	%xmm1,96(%r13)
	jmp	.Lctr_enc_done

.p2align	4
.Lctr_enc_short:
	leaq	32(%rbp),%rcx
	leaq	48(%rbp),%rdx
	leaq	(%r15),%r8
	call	asm_AES_encrypt
	movdqu	(%r12),%xmm0
	leaq	16(%r12),%r12
	movl	44(%rbp),%eax
	bswapl	%eax
	pxor	48(%rbp),%xmm0
	incl	%eax
	movdqu	%xmm0,(%r13)
	bswapl	%eax
	leaq	16(%r13),%r13
	movl	%eax,44(%rsp)
	decq	%r14
	jnz	.Lctr_enc_short

.Lctr_enc_done:
	leaq	(%rsp),%rax
	pxor	%xmm0,%xmm0
.Lctr_enc_bzero:
	movdqa	%xmm0,0(%rax)
	movdqa	%xmm0,16(%rax)
	leaq	32(%rax),%rax
	cmpq	%rax,%rbp
	ja	.Lctr_enc_bzero

	leaq	(%rbp),%rsp
	movaps	64(%rbp),%xmm6
	movaps	80(%rbp),%xmm7
	movaps	96(%rbp),%xmm8
	movaps	112(%rbp),%xmm9
	movaps	128(%rbp),%xmm10
	movaps	144(%rbp),%xmm11
	movaps	160(%rbp),%xmm12
	movaps	176(%rbp),%xmm13
	movaps	192(%rbp),%xmm14
	movaps	208(%rbp),%xmm15
	leaq	160(%rbp),%rsp
	movq	72(%rsp),%r15
	movq	80(%rsp),%r14
	movq	88(%rsp),%r13
	movq	96(%rsp),%r12
	movq	104(%rsp),%rbx
	movq	112(%rsp),%rax
	leaq	120(%rsp),%rsp
	movq	%rax,%rbp
.Lctr_enc_epilogue:
	.byte	0xf3,0xc3

.globl	bsaes_xts_encrypt
.def	bsaes_xts_encrypt;	.scl 2;	.type 32;	.endef
.p2align	4
bsaes_xts_encrypt:
	movq	%rsp,%rax
.Lxts_enc_prologue:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	leaq	-72(%rsp),%rsp
	movq	160(%rsp),%r10
	movq	168(%rsp),%r11
	leaq	-160(%rsp),%rsp
	movaps	%xmm6,64(%rsp)
	movaps	%xmm7,80(%rsp)
	movaps	%xmm8,96(%rsp)
	movaps	%xmm9,112(%rsp)
	movaps	%xmm10,128(%rsp)
	movaps	%xmm11,144(%rsp)
	movaps	%xmm12,160(%rsp)
	movaps	%xmm13,176(%rsp)
	movaps	%xmm14,192(%rsp)
	movaps	%xmm15,208(%rsp)
.Lxts_enc_body:
	movq	%rsp,%rbp
	movq	%rcx,%r12
	movq	%rdx,%r13
	movq	%r8,%r14
	movq	%r9,%r15

	leaq	(%r11),%rcx
	leaq	32(%rbp),%rdx
	leaq	(%r10),%r8
	call	asm_AES_encrypt		

	movl	240(%r15),%eax
	movq	%r14,%rbx

	movl	%eax,%edx
	shlq	$7,%rax
	subq	$96,%rax
	subq	%rax,%rsp

	movq	%rsp,%rax
	movq	%r15,%rcx
	movl	%edx,%r10d
	call	_bsaes_key_convert
	pxor	%xmm6,%xmm7
	movdqa	%xmm7,(%rax)

	andq	$-16,%r14
	subq	$128,%rsp
	movdqa	32(%rbp),%xmm6

	pxor	%xmm14,%xmm14
	movdqa	.Lxts_magic(%rip),%xmm12
	pcmpgtd	%xmm6,%xmm14

	subq	$128,%r14
	jc	.Lxts_enc_short
	jmp	.Lxts_enc_loop

.p2align	4
.Lxts_enc_loop:
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm15
	movdqa	%xmm6,0(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm0
	movdqa	%xmm6,16(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	0(%r12),%xmm7
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm1
	movdqa	%xmm6,32(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm15
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm2
	movdqa	%xmm6,48(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	32(%r12),%xmm9
	pxor	%xmm8,%xmm0
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm3
	movdqa	%xmm6,64(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	48(%r12),%xmm10
	pxor	%xmm9,%xmm1
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm4
	movdqa	%xmm6,80(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	64(%r12),%xmm11
	pxor	%xmm10,%xmm2
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm5
	movdqa	%xmm6,96(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	80(%r12),%xmm12
	pxor	%xmm11,%xmm3
	movdqu	96(%r12),%xmm13
	pxor	%xmm12,%xmm4
	movdqu	112(%r12),%xmm14
	leaq	128(%r12),%r12
	movdqa	%xmm6,112(%rsp)
	pxor	%xmm13,%xmm5
	leaq	128(%rsp),%rax
	pxor	%xmm14,%xmm6
	movl	%edx,%r10d

	call	_bsaes_encrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm3
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm5
	movdqu	%xmm3,32(%r13)
	pxor	64(%rsp),%xmm2
	movdqu	%xmm5,48(%r13)
	pxor	80(%rsp),%xmm6
	movdqu	%xmm2,64(%r13)
	pxor	96(%rsp),%xmm1
	movdqu	%xmm6,80(%r13)
	pxor	112(%rsp),%xmm4
	movdqu	%xmm1,96(%r13)
	movdqu	%xmm4,112(%r13)
	leaq	128(%r13),%r13

	movdqa	112(%rsp),%xmm6
	pxor	%xmm14,%xmm14
	movdqa	.Lxts_magic(%rip),%xmm12
	pcmpgtd	%xmm6,%xmm14
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6

	subq	$128,%r14
	jnc	.Lxts_enc_loop

.Lxts_enc_short:
	addq	$128,%r14
	jz	.Lxts_enc_done
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm15
	movdqa	%xmm6,0(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm0
	movdqa	%xmm6,16(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	0(%r12),%xmm7
	cmpq	$16,%r14
	je	.Lxts_enc_1
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm1
	movdqa	%xmm6,32(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	16(%r12),%xmm8
	cmpq	$32,%r14
	je	.Lxts_enc_2
	pxor	%xmm7,%xmm15
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm2
	movdqa	%xmm6,48(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	32(%r12),%xmm9
	cmpq	$48,%r14
	je	.Lxts_enc_3
	pxor	%xmm8,%xmm0
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm3
	movdqa	%xmm6,64(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	48(%r12),%xmm10
	cmpq	$64,%r14
	je	.Lxts_enc_4
	pxor	%xmm9,%xmm1
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm4
	movdqa	%xmm6,80(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	64(%r12),%xmm11
	cmpq	$80,%r14
	je	.Lxts_enc_5
	pxor	%xmm10,%xmm2
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm5
	movdqa	%xmm6,96(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	80(%r12),%xmm12
	cmpq	$96,%r14
	je	.Lxts_enc_6
	pxor	%xmm11,%xmm3
	movdqu	96(%r12),%xmm13
	pxor	%xmm12,%xmm4
	movdqa	%xmm6,112(%rsp)
	leaq	112(%r12),%r12
	pxor	%xmm13,%xmm5
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_encrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm3
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm5
	movdqu	%xmm3,32(%r13)
	pxor	64(%rsp),%xmm2
	movdqu	%xmm5,48(%r13)
	pxor	80(%rsp),%xmm6
	movdqu	%xmm2,64(%r13)
	pxor	96(%rsp),%xmm1
	movdqu	%xmm6,80(%r13)
	movdqu	%xmm1,96(%r13)
	leaq	112(%r13),%r13

	movdqa	112(%rsp),%xmm6
	jmp	.Lxts_enc_done
.p2align	4
.Lxts_enc_6:
	pxor	%xmm11,%xmm3
	leaq	96(%r12),%r12
	pxor	%xmm12,%xmm4
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_encrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm3
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm5
	movdqu	%xmm3,32(%r13)
	pxor	64(%rsp),%xmm2
	movdqu	%xmm5,48(%r13)
	pxor	80(%rsp),%xmm6
	movdqu	%xmm2,64(%r13)
	movdqu	%xmm6,80(%r13)
	leaq	96(%r13),%r13

	movdqa	96(%rsp),%xmm6
	jmp	.Lxts_enc_done
.p2align	4
.Lxts_enc_5:
	pxor	%xmm10,%xmm2
	leaq	80(%r12),%r12
	pxor	%xmm11,%xmm3
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_encrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm3
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm5
	movdqu	%xmm3,32(%r13)
	pxor	64(%rsp),%xmm2
	movdqu	%xmm5,48(%r13)
	movdqu	%xmm2,64(%r13)
	leaq	80(%r13),%r13

	movdqa	80(%rsp),%xmm6
	jmp	.Lxts_enc_done
.p2align	4
.Lxts_enc_4:
	pxor	%xmm9,%xmm1
	leaq	64(%r12),%r12
	pxor	%xmm10,%xmm2
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_encrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm3
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm5
	movdqu	%xmm3,32(%r13)
	movdqu	%xmm5,48(%r13)
	leaq	64(%r13),%r13

	movdqa	64(%rsp),%xmm6
	jmp	.Lxts_enc_done
.p2align	4
.Lxts_enc_3:
	pxor	%xmm8,%xmm0
	leaq	48(%r12),%r12
	pxor	%xmm9,%xmm1
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_encrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm3
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm3,32(%r13)
	leaq	48(%r13),%r13

	movdqa	48(%rsp),%xmm6
	jmp	.Lxts_enc_done
.p2align	4
.Lxts_enc_2:
	pxor	%xmm7,%xmm15
	leaq	32(%r12),%r12
	pxor	%xmm8,%xmm0
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_encrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	leaq	32(%r13),%r13

	movdqa	32(%rsp),%xmm6
	jmp	.Lxts_enc_done
.p2align	4
.Lxts_enc_1:
	pxor	%xmm15,%xmm7
	leaq	16(%r12),%r12
	movdqa	%xmm7,32(%rbp)
	leaq	32(%rbp),%rcx
	leaq	32(%rbp),%rdx
	leaq	(%r15),%r8
	call	asm_AES_encrypt		
	pxor	32(%rbp),%xmm15





	movdqu	%xmm15,0(%r13)
	leaq	16(%r13),%r13

	movdqa	16(%rsp),%xmm6

.Lxts_enc_done:
	andl	$15,%ebx
	jz	.Lxts_enc_ret
	movq	%r13,%rdx

.Lxts_enc_steal:
	movzbl	(%r12),%eax
	movzbl	-16(%rdx),%ecx
	leaq	1(%r12),%r12
	movb	%al,-16(%rdx)
	movb	%cl,0(%rdx)
	leaq	1(%rdx),%rdx
	subl	$1,%ebx
	jnz	.Lxts_enc_steal

	movdqu	-16(%r13),%xmm15
	leaq	32(%rbp),%rcx
	pxor	%xmm6,%xmm15
	leaq	32(%rbp),%rdx
	movdqa	%xmm15,32(%rbp)
	leaq	(%r15),%r8
	call	asm_AES_encrypt		
	pxor	32(%rbp),%xmm6
	movdqu	%xmm6,-16(%r13)

.Lxts_enc_ret:
	leaq	(%rsp),%rax
	pxor	%xmm0,%xmm0
.Lxts_enc_bzero:
	movdqa	%xmm0,0(%rax)
	movdqa	%xmm0,16(%rax)
	leaq	32(%rax),%rax
	cmpq	%rax,%rbp
	ja	.Lxts_enc_bzero

	leaq	(%rbp),%rsp
	movaps	64(%rbp),%xmm6
	movaps	80(%rbp),%xmm7
	movaps	96(%rbp),%xmm8
	movaps	112(%rbp),%xmm9
	movaps	128(%rbp),%xmm10
	movaps	144(%rbp),%xmm11
	movaps	160(%rbp),%xmm12
	movaps	176(%rbp),%xmm13
	movaps	192(%rbp),%xmm14
	movaps	208(%rbp),%xmm15
	leaq	160(%rbp),%rsp
	movq	72(%rsp),%r15
	movq	80(%rsp),%r14
	movq	88(%rsp),%r13
	movq	96(%rsp),%r12
	movq	104(%rsp),%rbx
	movq	112(%rsp),%rax
	leaq	120(%rsp),%rsp
	movq	%rax,%rbp
.Lxts_enc_epilogue:
	.byte	0xf3,0xc3


.globl	bsaes_xts_decrypt
.def	bsaes_xts_decrypt;	.scl 2;	.type 32;	.endef
.p2align	4
bsaes_xts_decrypt:
	movq	%rsp,%rax
.Lxts_dec_prologue:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	leaq	-72(%rsp),%rsp
	movq	160(%rsp),%r10
	movq	168(%rsp),%r11
	leaq	-160(%rsp),%rsp
	movaps	%xmm6,64(%rsp)
	movaps	%xmm7,80(%rsp)
	movaps	%xmm8,96(%rsp)
	movaps	%xmm9,112(%rsp)
	movaps	%xmm10,128(%rsp)
	movaps	%xmm11,144(%rsp)
	movaps	%xmm12,160(%rsp)
	movaps	%xmm13,176(%rsp)
	movaps	%xmm14,192(%rsp)
	movaps	%xmm15,208(%rsp)
.Lxts_dec_body:
	movq	%rsp,%rbp
	movq	%rcx,%r12
	movq	%rdx,%r13
	movq	%r8,%r14
	movq	%r9,%r15

	leaq	(%r11),%rcx
	leaq	32(%rbp),%rdx
	leaq	(%r10),%r8
	call	asm_AES_encrypt		

	movl	240(%r15),%eax
	movq	%r14,%rbx

	movl	%eax,%edx
	shlq	$7,%rax
	subq	$96,%rax
	subq	%rax,%rsp

	movq	%rsp,%rax
	movq	%r15,%rcx
	movl	%edx,%r10d
	call	_bsaes_key_convert
	pxor	(%rsp),%xmm7
	movdqa	%xmm6,(%rax)
	movdqa	%xmm7,(%rsp)

	xorl	%eax,%eax
	andq	$-16,%r14
	testl	$15,%ebx
	setnz	%al
	shlq	$4,%rax
	subq	%rax,%r14

	subq	$128,%rsp
	movdqa	32(%rbp),%xmm6

	pxor	%xmm14,%xmm14
	movdqa	.Lxts_magic(%rip),%xmm12
	pcmpgtd	%xmm6,%xmm14

	subq	$128,%r14
	jc	.Lxts_dec_short
	jmp	.Lxts_dec_loop

.p2align	4
.Lxts_dec_loop:
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm15
	movdqa	%xmm6,0(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm0
	movdqa	%xmm6,16(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	0(%r12),%xmm7
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm1
	movdqa	%xmm6,32(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	16(%r12),%xmm8
	pxor	%xmm7,%xmm15
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm2
	movdqa	%xmm6,48(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	32(%r12),%xmm9
	pxor	%xmm8,%xmm0
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm3
	movdqa	%xmm6,64(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	48(%r12),%xmm10
	pxor	%xmm9,%xmm1
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm4
	movdqa	%xmm6,80(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	64(%r12),%xmm11
	pxor	%xmm10,%xmm2
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm5
	movdqa	%xmm6,96(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	80(%r12),%xmm12
	pxor	%xmm11,%xmm3
	movdqu	96(%r12),%xmm13
	pxor	%xmm12,%xmm4
	movdqu	112(%r12),%xmm14
	leaq	128(%r12),%r12
	movdqa	%xmm6,112(%rsp)
	pxor	%xmm13,%xmm5
	leaq	128(%rsp),%rax
	pxor	%xmm14,%xmm6
	movl	%edx,%r10d

	call	_bsaes_decrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm5
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm3
	movdqu	%xmm5,32(%r13)
	pxor	64(%rsp),%xmm1
	movdqu	%xmm3,48(%r13)
	pxor	80(%rsp),%xmm6
	movdqu	%xmm1,64(%r13)
	pxor	96(%rsp),%xmm2
	movdqu	%xmm6,80(%r13)
	pxor	112(%rsp),%xmm4
	movdqu	%xmm2,96(%r13)
	movdqu	%xmm4,112(%r13)
	leaq	128(%r13),%r13

	movdqa	112(%rsp),%xmm6
	pxor	%xmm14,%xmm14
	movdqa	.Lxts_magic(%rip),%xmm12
	pcmpgtd	%xmm6,%xmm14
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6

	subq	$128,%r14
	jnc	.Lxts_dec_loop

.Lxts_dec_short:
	addq	$128,%r14
	jz	.Lxts_dec_done
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm15
	movdqa	%xmm6,0(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm0
	movdqa	%xmm6,16(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	0(%r12),%xmm7
	cmpq	$16,%r14
	je	.Lxts_dec_1
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm1
	movdqa	%xmm6,32(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	16(%r12),%xmm8
	cmpq	$32,%r14
	je	.Lxts_dec_2
	pxor	%xmm7,%xmm15
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm2
	movdqa	%xmm6,48(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	32(%r12),%xmm9
	cmpq	$48,%r14
	je	.Lxts_dec_3
	pxor	%xmm8,%xmm0
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm3
	movdqa	%xmm6,64(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	48(%r12),%xmm10
	cmpq	$64,%r14
	je	.Lxts_dec_4
	pxor	%xmm9,%xmm1
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm4
	movdqa	%xmm6,80(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	64(%r12),%xmm11
	cmpq	$80,%r14
	je	.Lxts_dec_5
	pxor	%xmm10,%xmm2
	pshufd	$19,%xmm14,%xmm13
	pxor	%xmm14,%xmm14
	movdqa	%xmm6,%xmm5
	movdqa	%xmm6,96(%rsp)
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	pcmpgtd	%xmm6,%xmm14
	pxor	%xmm13,%xmm6
	movdqu	80(%r12),%xmm12
	cmpq	$96,%r14
	je	.Lxts_dec_6
	pxor	%xmm11,%xmm3
	movdqu	96(%r12),%xmm13
	pxor	%xmm12,%xmm4
	movdqa	%xmm6,112(%rsp)
	leaq	112(%r12),%r12
	pxor	%xmm13,%xmm5
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_decrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm5
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm3
	movdqu	%xmm5,32(%r13)
	pxor	64(%rsp),%xmm1
	movdqu	%xmm3,48(%r13)
	pxor	80(%rsp),%xmm6
	movdqu	%xmm1,64(%r13)
	pxor	96(%rsp),%xmm2
	movdqu	%xmm6,80(%r13)
	movdqu	%xmm2,96(%r13)
	leaq	112(%r13),%r13

	movdqa	112(%rsp),%xmm6
	jmp	.Lxts_dec_done
.p2align	4
.Lxts_dec_6:
	pxor	%xmm11,%xmm3
	leaq	96(%r12),%r12
	pxor	%xmm12,%xmm4
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_decrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm5
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm3
	movdqu	%xmm5,32(%r13)
	pxor	64(%rsp),%xmm1
	movdqu	%xmm3,48(%r13)
	pxor	80(%rsp),%xmm6
	movdqu	%xmm1,64(%r13)
	movdqu	%xmm6,80(%r13)
	leaq	96(%r13),%r13

	movdqa	96(%rsp),%xmm6
	jmp	.Lxts_dec_done
.p2align	4
.Lxts_dec_5:
	pxor	%xmm10,%xmm2
	leaq	80(%r12),%r12
	pxor	%xmm11,%xmm3
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_decrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm5
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm3
	movdqu	%xmm5,32(%r13)
	pxor	64(%rsp),%xmm1
	movdqu	%xmm3,48(%r13)
	movdqu	%xmm1,64(%r13)
	leaq	80(%r13),%r13

	movdqa	80(%rsp),%xmm6
	jmp	.Lxts_dec_done
.p2align	4
.Lxts_dec_4:
	pxor	%xmm9,%xmm1
	leaq	64(%r12),%r12
	pxor	%xmm10,%xmm2
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_decrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm5
	movdqu	%xmm0,16(%r13)
	pxor	48(%rsp),%xmm3
	movdqu	%xmm5,32(%r13)
	movdqu	%xmm3,48(%r13)
	leaq	64(%r13),%r13

	movdqa	64(%rsp),%xmm6
	jmp	.Lxts_dec_done
.p2align	4
.Lxts_dec_3:
	pxor	%xmm8,%xmm0
	leaq	48(%r12),%r12
	pxor	%xmm9,%xmm1
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_decrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	pxor	32(%rsp),%xmm5
	movdqu	%xmm0,16(%r13)
	movdqu	%xmm5,32(%r13)
	leaq	48(%r13),%r13

	movdqa	48(%rsp),%xmm6
	jmp	.Lxts_dec_done
.p2align	4
.Lxts_dec_2:
	pxor	%xmm7,%xmm15
	leaq	32(%r12),%r12
	pxor	%xmm8,%xmm0
	leaq	128(%rsp),%rax
	movl	%edx,%r10d

	call	_bsaes_decrypt8

	pxor	0(%rsp),%xmm15
	pxor	16(%rsp),%xmm0
	movdqu	%xmm15,0(%r13)
	movdqu	%xmm0,16(%r13)
	leaq	32(%r13),%r13

	movdqa	32(%rsp),%xmm6
	jmp	.Lxts_dec_done
.p2align	4
.Lxts_dec_1:
	pxor	%xmm15,%xmm7
	leaq	16(%r12),%r12
	movdqa	%xmm7,32(%rbp)
	leaq	32(%rbp),%rcx
	leaq	32(%rbp),%rdx
	leaq	(%r15),%r8
	call	asm_AES_decrypt		
	pxor	32(%rbp),%xmm15





	movdqu	%xmm15,0(%r13)
	leaq	16(%r13),%r13

	movdqa	16(%rsp),%xmm6

.Lxts_dec_done:
	andl	$15,%ebx
	jz	.Lxts_dec_ret

	pxor	%xmm14,%xmm14
	movdqa	.Lxts_magic(%rip),%xmm12
	pcmpgtd	%xmm6,%xmm14
	pshufd	$19,%xmm14,%xmm13
	movdqa	%xmm6,%xmm5
	paddq	%xmm6,%xmm6
	pand	%xmm12,%xmm13
	movdqu	(%r12),%xmm15
	pxor	%xmm13,%xmm6

	leaq	32(%rbp),%rcx
	pxor	%xmm6,%xmm15
	leaq	32(%rbp),%rdx
	movdqa	%xmm15,32(%rbp)
	leaq	(%r15),%r8
	call	asm_AES_decrypt		
	pxor	32(%rbp),%xmm6
	movq	%r13,%rdx
	movdqu	%xmm6,(%r13)

.Lxts_dec_steal:
	movzbl	16(%r12),%eax
	movzbl	(%rdx),%ecx
	leaq	1(%r12),%r12
	movb	%al,(%rdx)
	movb	%cl,16(%rdx)
	leaq	1(%rdx),%rdx
	subl	$1,%ebx
	jnz	.Lxts_dec_steal

	movdqu	(%r13),%xmm15
	leaq	32(%rbp),%rcx
	pxor	%xmm5,%xmm15
	leaq	32(%rbp),%rdx
	movdqa	%xmm15,32(%rbp)
	leaq	(%r15),%r8
	call	asm_AES_decrypt		
	pxor	32(%rbp),%xmm5
	movdqu	%xmm5,(%r13)

.Lxts_dec_ret:
	leaq	(%rsp),%rax
	pxor	%xmm0,%xmm0
.Lxts_dec_bzero:
	movdqa	%xmm0,0(%rax)
	movdqa	%xmm0,16(%rax)
	leaq	32(%rax),%rax
	cmpq	%rax,%rbp
	ja	.Lxts_dec_bzero

	leaq	(%rbp),%rsp
	movaps	64(%rbp),%xmm6
	movaps	80(%rbp),%xmm7
	movaps	96(%rbp),%xmm8
	movaps	112(%rbp),%xmm9
	movaps	128(%rbp),%xmm10
	movaps	144(%rbp),%xmm11
	movaps	160(%rbp),%xmm12
	movaps	176(%rbp),%xmm13
	movaps	192(%rbp),%xmm14
	movaps	208(%rbp),%xmm15
	leaq	160(%rbp),%rsp
	movq	72(%rsp),%r15
	movq	80(%rsp),%r14
	movq	88(%rsp),%r13
	movq	96(%rsp),%r12
	movq	104(%rsp),%rbx
	movq	112(%rsp),%rax
	leaq	120(%rsp),%rsp
	movq	%rax,%rbp
.Lxts_dec_epilogue:
	.byte	0xf3,0xc3


.p2align	6
_bsaes_const:
.LM0ISR:
.quad	0x0a0e0206070b0f03, 0x0004080c0d010509
.LISRM0:
.quad	0x01040b0e0205080f, 0x0306090c00070a0d
.LISR:
.quad	0x0504070602010003, 0x0f0e0d0c080b0a09
.LBS0:
.quad	0x5555555555555555, 0x5555555555555555
.LBS1:
.quad	0x3333333333333333, 0x3333333333333333
.LBS2:
.quad	0x0f0f0f0f0f0f0f0f, 0x0f0f0f0f0f0f0f0f
.LSR:
.quad	0x0504070600030201, 0x0f0e0d0c0a09080b
.LSRM0:
.quad	0x0304090e00050a0f, 0x01060b0c0207080d
.LM0SR:
.quad	0x0a0e02060f03070b, 0x0004080c05090d01
.LSWPUP:
.quad	0x0706050403020100, 0x0c0d0e0f0b0a0908
.LSWPUPM0SR:
.quad	0x0a0d02060c03070b, 0x0004080f05090e01
.LADD1:
.quad	0x0000000000000000, 0x0000000100000000
.LADD2:
.quad	0x0000000000000000, 0x0000000200000000
.LADD3:
.quad	0x0000000000000000, 0x0000000300000000
.LADD4:
.quad	0x0000000000000000, 0x0000000400000000
.LADD5:
.quad	0x0000000000000000, 0x0000000500000000
.LADD6:
.quad	0x0000000000000000, 0x0000000600000000
.LADD7:
.quad	0x0000000000000000, 0x0000000700000000
.LADD8:
.quad	0x0000000000000000, 0x0000000800000000
.Lxts_magic:
.long	0x87,0,1,0
.Lmasks:
.quad	0x0101010101010101, 0x0101010101010101
.quad	0x0202020202020202, 0x0202020202020202
.quad	0x0404040404040404, 0x0404040404040404
.quad	0x0808080808080808, 0x0808080808080808
.LM0:
.quad	0x02060a0e03070b0f, 0x0004080c0105090d
.L63:
.quad	0x6363636363636363, 0x6363636363636363
.byte	66,105,116,45,115,108,105,99,101,100,32,65,69,83,32,102,111,114,32,120,56,54,95,54,52,47,83,83,83,69,51,44,32,69,109,105,108,105,97,32,75,195,164,115,112,101,114,44,32,80,101,116,101,114,32,83,99,104,119,97,98,101,44,32,65,110,100,121,32,80,111,108,121,97,107,111,118,0
.p2align	6


.def	se_handler;	.scl 3;	.type 32;	.endef
.p2align	4
se_handler:
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushfq
	subq	$64,%rsp

	movq	120(%r8),%rax
	movq	248(%r8),%rbx

	movq	8(%r9),%rsi
	movq	56(%r9),%r11

	movl	0(%r11),%r10d
	leaq	(%rsi,%r10,1),%r10
	cmpq	%r10,%rbx
	jb	.Lin_prologue

	movq	152(%r8),%rax

	movl	4(%r11),%r10d
	leaq	(%rsi,%r10,1),%r10
	cmpq	%r10,%rbx
	jae	.Lin_prologue

	movq	160(%r8),%rax

	leaq	64(%rax),%rsi
	leaq	512(%r8),%rdi
	movl	$20,%ecx
.long	0xa548f3fc		
	leaq	160(%rax),%rax

	movq	112(%rax),%rbp
	movq	104(%rax),%rbx
	movq	96(%rax),%r12
	movq	88(%rax),%r13
	movq	80(%rax),%r14
	movq	72(%rax),%r15
	leaq	120(%rax),%rax
	movq	%rbx,144(%r8)
	movq	%rbp,160(%r8)
	movq	%r12,216(%r8)
	movq	%r13,224(%r8)
	movq	%r14,232(%r8)
	movq	%r15,240(%r8)

.Lin_prologue:
	movq	%rax,152(%r8)

	movq	40(%r9),%rdi
	movq	%r8,%rsi
	movl	$154,%ecx
.long	0xa548f3fc		

	movq	%r9,%rsi
	xorq	%rcx,%rcx
	movq	8(%rsi),%rdx
	movq	0(%rsi),%r8
	movq	16(%rsi),%r9
	movq	40(%rsi),%r10
	leaq	56(%rsi),%r11
	leaq	24(%rsi),%r12
	movq	%r10,32(%rsp)
	movq	%r11,40(%rsp)
	movq	%r12,48(%rsp)
	movq	%rcx,56(%rsp)
	call	*__imp_RtlVirtualUnwind(%rip)

	movl	$1,%eax
	addq	$64,%rsp
	popfq
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.byte	0xf3,0xc3


.section	.pdata
.p2align	2
.rva	.Lcbc_dec_prologue
.rva	.Lcbc_dec_epilogue
.rva	.Lcbc_dec_info

.rva	.Lctr_enc_prologue
.rva	.Lctr_enc_epilogue
.rva	.Lctr_enc_info

.rva	.Lxts_enc_prologue
.rva	.Lxts_enc_epilogue
.rva	.Lxts_enc_info

.rva	.Lxts_dec_prologue
.rva	.Lxts_dec_epilogue
.rva	.Lxts_dec_info

.section	.xdata
.p2align	3
.Lcbc_dec_info:
.byte	9,0,0,0
.rva	se_handler
.rva	.Lcbc_dec_body,.Lcbc_dec_epilogue	
.Lctr_enc_info:
.byte	9,0,0,0
.rva	se_handler
.rva	.Lctr_enc_body,.Lctr_enc_epilogue	
.Lxts_enc_info:
.byte	9,0,0,0
.rva	se_handler
.rva	.Lxts_enc_body,.Lxts_enc_epilogue	
.Lxts_dec_info:
.byte	9,0,0,0
.rva	se_handler
.rva	.Lxts_dec_body,.Lxts_dec_epilogue	
