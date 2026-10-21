package org.jsoup.parser;

import com.fasterxml.jackson.core.JsonPointer;
import cz.msebera.android.httpclient.impl.client.cache.CacheConfig;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.Locale;
import k6.g;
import k6.i;
import k6.k;
import k6.n;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
abstract class TokeniserState {

    /* renamed from: A, reason: collision with root package name */
    public static final AnonymousClass18 f19247A;

    /* renamed from: A0, reason: collision with root package name */
    public static final char[] f19248A0;

    /* renamed from: B, reason: collision with root package name */
    public static final AnonymousClass19 f19249B;

    /* renamed from: B0, reason: collision with root package name */
    public static final char[] f19250B0;

    /* renamed from: C, reason: collision with root package name */
    public static final AnonymousClass20 f19251C;

    /* renamed from: C0, reason: collision with root package name */
    public static final String f19252C0;

    /* renamed from: D, reason: collision with root package name */
    public static final AnonymousClass21 f19253D;

    /* renamed from: D0, reason: collision with root package name */
    public static final /* synthetic */ TokeniserState[] f19254D0;

    /* renamed from: E, reason: collision with root package name */
    public static final AnonymousClass22 f19255E;

    /* renamed from: F, reason: collision with root package name */
    public static final AnonymousClass23 f19256F;

    /* renamed from: G, reason: collision with root package name */
    public static final AnonymousClass24 f19257G;

    /* renamed from: H, reason: collision with root package name */
    public static final AnonymousClass25 f19258H;

    /* renamed from: I, reason: collision with root package name */
    public static final AnonymousClass26 f19259I;

    /* renamed from: J, reason: collision with root package name */
    public static final AnonymousClass27 f19260J;

    /* renamed from: K, reason: collision with root package name */
    public static final AnonymousClass28 f19261K;

    /* renamed from: L, reason: collision with root package name */
    public static final AnonymousClass29 f19262L;

    /* renamed from: M, reason: collision with root package name */
    public static final AnonymousClass30 f19263M;

    /* renamed from: N, reason: collision with root package name */
    public static final AnonymousClass31 f19264N;

    /* renamed from: O, reason: collision with root package name */
    public static final AnonymousClass32 f19265O;

    /* renamed from: P, reason: collision with root package name */
    public static final AnonymousClass33 f19266P;

    /* renamed from: Q, reason: collision with root package name */
    public static final AnonymousClass34 f19267Q;

    /* renamed from: R, reason: collision with root package name */
    public static final AnonymousClass35 f19268R;

    /* renamed from: S, reason: collision with root package name */
    public static final AnonymousClass36 f19269S;

    /* renamed from: T, reason: collision with root package name */
    public static final AnonymousClass37 f19270T;

    /* renamed from: U, reason: collision with root package name */
    public static final AnonymousClass38 f19271U;

    /* renamed from: V, reason: collision with root package name */
    public static final AnonymousClass39 f19272V;

    /* renamed from: W, reason: collision with root package name */
    public static final AnonymousClass40 f19273W;

    /* renamed from: X, reason: collision with root package name */
    public static final AnonymousClass41 f19274X;

    /* renamed from: Y, reason: collision with root package name */
    public static final AnonymousClass42 f19275Y;

    /* renamed from: Z, reason: collision with root package name */
    public static final AnonymousClass43 f19276Z;

    /* renamed from: a0, reason: collision with root package name */
    public static final AnonymousClass44 f19277a0;

    /* renamed from: b, reason: collision with root package name */
    public static final AnonymousClass1 f19278b;

    /* renamed from: b0, reason: collision with root package name */
    public static final AnonymousClass45 f19279b0;

    /* renamed from: c0, reason: collision with root package name */
    public static final AnonymousClass46 f19280c0;

    /* renamed from: d0, reason: collision with root package name */
    public static final AnonymousClass47 f19281d0;

    /* renamed from: e, reason: collision with root package name */
    public static final AnonymousClass2 f19282e;

    /* renamed from: e0, reason: collision with root package name */
    public static final AnonymousClass48 f19283e0;

    /* renamed from: f, reason: collision with root package name */
    public static final AnonymousClass3 f19284f;

    /* renamed from: f0, reason: collision with root package name */
    public static final AnonymousClass49 f19285f0;

    /* renamed from: g0, reason: collision with root package name */
    public static final AnonymousClass50 f19286g0;

    /* renamed from: h0, reason: collision with root package name */
    public static final AnonymousClass51 f19287h0;

    /* renamed from: i0, reason: collision with root package name */
    public static final AnonymousClass52 f19288i0;

    /* renamed from: j, reason: collision with root package name */
    public static final AnonymousClass4 f19289j;

    /* renamed from: j0, reason: collision with root package name */
    public static final AnonymousClass53 f19290j0;

    /* renamed from: k0, reason: collision with root package name */
    public static final AnonymousClass54 f19291k0;

    /* renamed from: l0, reason: collision with root package name */
    public static final AnonymousClass55 f19292l0;

    /* renamed from: m, reason: collision with root package name */
    public static final AnonymousClass5 f19293m;

    /* renamed from: m0, reason: collision with root package name */
    public static final AnonymousClass56 f19294m0;

    /* renamed from: n, reason: collision with root package name */
    public static final AnonymousClass6 f19295n;

    /* renamed from: n0, reason: collision with root package name */
    public static final AnonymousClass57 f19296n0;

    /* renamed from: o0, reason: collision with root package name */
    public static final AnonymousClass58 f19297o0;

    /* renamed from: p, reason: collision with root package name */
    public static final AnonymousClass7 f19298p;

    /* renamed from: p0, reason: collision with root package name */
    public static final AnonymousClass59 f19299p0;

    /* renamed from: q, reason: collision with root package name */
    public static final AnonymousClass8 f19300q;

    /* renamed from: q0, reason: collision with root package name */
    public static final AnonymousClass60 f19301q0;

    /* renamed from: r, reason: collision with root package name */
    public static final AnonymousClass9 f19302r;

    /* renamed from: r0, reason: collision with root package name */
    public static final AnonymousClass61 f19303r0;

    /* renamed from: s, reason: collision with root package name */
    public static final AnonymousClass10 f19304s;

    /* renamed from: s0, reason: collision with root package name */
    public static final AnonymousClass62 f19305s0;

    /* renamed from: t, reason: collision with root package name */
    public static final AnonymousClass11 f19306t;

    /* renamed from: t0, reason: collision with root package name */
    public static final AnonymousClass63 f19307t0;

    /* renamed from: u, reason: collision with root package name */
    public static final AnonymousClass12 f19308u;

    /* renamed from: u0, reason: collision with root package name */
    public static final AnonymousClass64 f19309u0;

    /* renamed from: v, reason: collision with root package name */
    public static final AnonymousClass13 f19310v;

    /* renamed from: v0, reason: collision with root package name */
    public static final AnonymousClass65 f19311v0;

    /* renamed from: w, reason: collision with root package name */
    public static final AnonymousClass14 f19312w;

    /* renamed from: w0, reason: collision with root package name */
    public static final AnonymousClass66 f19313w0;

    /* renamed from: x, reason: collision with root package name */
    public static final AnonymousClass15 f19314x;

    /* renamed from: x0, reason: collision with root package name */
    public static final AnonymousClass67 f19315x0;

    /* renamed from: y, reason: collision with root package name */
    public static final AnonymousClass16 f19316y;

    /* renamed from: y0, reason: collision with root package name */
    public static final char[] f19317y0;

    /* renamed from: z, reason: collision with root package name */
    public static final AnonymousClass17 f19318z;

    /* renamed from: z0, reason: collision with root package name */
    public static final char[] f19319z0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.TokeniserState$1] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.jsoup.parser.TokeniserState$11] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.jsoup.parser.TokeniserState$12] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.jsoup.parser.TokeniserState$13] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.jsoup.parser.TokeniserState$14] */
    /* JADX WARN: Type inference failed for: r14v0, types: [org.jsoup.parser.TokeniserState$15] */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.jsoup.parser.TokeniserState$16] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.jsoup.parser.TokeniserState$17] */
    /* JADX WARN: Type inference failed for: r17v0, types: [org.jsoup.parser.TokeniserState$18] */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.jsoup.parser.TokeniserState$19] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.jsoup.parser.TokeniserState$20] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.parser.TokeniserState$2] */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.jsoup.parser.TokeniserState$21] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.jsoup.parser.TokeniserState$22] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.jsoup.parser.TokeniserState$23] */
    /* JADX WARN: Type inference failed for: r23v0, types: [org.jsoup.parser.TokeniserState$24] */
    /* JADX WARN: Type inference failed for: r24v0, types: [org.jsoup.parser.TokeniserState$25] */
    /* JADX WARN: Type inference failed for: r25v0, types: [org.jsoup.parser.TokeniserState$26] */
    /* JADX WARN: Type inference failed for: r26v0, types: [org.jsoup.parser.TokeniserState$27] */
    /* JADX WARN: Type inference failed for: r27v0, types: [org.jsoup.parser.TokeniserState$28] */
    /* JADX WARN: Type inference failed for: r28v0, types: [org.jsoup.parser.TokeniserState$29] */
    /* JADX WARN: Type inference failed for: r29v0, types: [org.jsoup.parser.TokeniserState$30] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.jsoup.parser.TokeniserState$3] */
    /* JADX WARN: Type inference failed for: r30v0, types: [org.jsoup.parser.TokeniserState$31] */
    /* JADX WARN: Type inference failed for: r31v0, types: [org.jsoup.parser.TokeniserState$32] */
    /* JADX WARN: Type inference failed for: r32v0, types: [org.jsoup.parser.TokeniserState$33] */
    /* JADX WARN: Type inference failed for: r33v0, types: [org.jsoup.parser.TokeniserState$34] */
    /* JADX WARN: Type inference failed for: r34v0, types: [org.jsoup.parser.TokeniserState$35] */
    /* JADX WARN: Type inference failed for: r35v0, types: [org.jsoup.parser.TokeniserState$36] */
    /* JADX WARN: Type inference failed for: r36v0, types: [org.jsoup.parser.TokeniserState$37] */
    /* JADX WARN: Type inference failed for: r37v0, types: [org.jsoup.parser.TokeniserState$38] */
    /* JADX WARN: Type inference failed for: r38v0, types: [org.jsoup.parser.TokeniserState$39] */
    /* JADX WARN: Type inference failed for: r39v0, types: [org.jsoup.parser.TokeniserState$40] */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.jsoup.parser.TokeniserState$4] */
    /* JADX WARN: Type inference failed for: r40v0, types: [org.jsoup.parser.TokeniserState$41] */
    /* JADX WARN: Type inference failed for: r41v0, types: [org.jsoup.parser.TokeniserState$42] */
    /* JADX WARN: Type inference failed for: r42v0, types: [org.jsoup.parser.TokeniserState$43] */
    /* JADX WARN: Type inference failed for: r43v0, types: [org.jsoup.parser.TokeniserState$44] */
    /* JADX WARN: Type inference failed for: r44v0, types: [org.jsoup.parser.TokeniserState$45] */
    /* JADX WARN: Type inference failed for: r45v0, types: [org.jsoup.parser.TokeniserState$46] */
    /* JADX WARN: Type inference failed for: r46v0, types: [org.jsoup.parser.TokeniserState$47] */
    /* JADX WARN: Type inference failed for: r47v0, types: [org.jsoup.parser.TokeniserState$48] */
    /* JADX WARN: Type inference failed for: r48v0, types: [org.jsoup.parser.TokeniserState$49] */
    /* JADX WARN: Type inference failed for: r49v0, types: [org.jsoup.parser.TokeniserState$50] */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.jsoup.parser.TokeniserState$5] */
    /* JADX WARN: Type inference failed for: r50v0, types: [org.jsoup.parser.TokeniserState$51] */
    /* JADX WARN: Type inference failed for: r51v0, types: [org.jsoup.parser.TokeniserState$52] */
    /* JADX WARN: Type inference failed for: r52v0, types: [org.jsoup.parser.TokeniserState$53] */
    /* JADX WARN: Type inference failed for: r53v0, types: [org.jsoup.parser.TokeniserState$54] */
    /* JADX WARN: Type inference failed for: r54v0, types: [org.jsoup.parser.TokeniserState$55] */
    /* JADX WARN: Type inference failed for: r55v0, types: [org.jsoup.parser.TokeniserState$56] */
    /* JADX WARN: Type inference failed for: r56v0, types: [org.jsoup.parser.TokeniserState$57] */
    /* JADX WARN: Type inference failed for: r57v0, types: [org.jsoup.parser.TokeniserState$58] */
    /* JADX WARN: Type inference failed for: r58v0, types: [org.jsoup.parser.TokeniserState$59] */
    /* JADX WARN: Type inference failed for: r59v0, types: [org.jsoup.parser.TokeniserState$60] */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.jsoup.parser.TokeniserState$6] */
    /* JADX WARN: Type inference failed for: r60v0, types: [org.jsoup.parser.TokeniserState$61] */
    /* JADX WARN: Type inference failed for: r61v0, types: [org.jsoup.parser.TokeniserState$62] */
    /* JADX WARN: Type inference failed for: r62v0, types: [org.jsoup.parser.TokeniserState$63] */
    /* JADX WARN: Type inference failed for: r63v0, types: [org.jsoup.parser.TokeniserState$64] */
    /* JADX WARN: Type inference failed for: r64v0, types: [org.jsoup.parser.TokeniserState$65] */
    /* JADX WARN: Type inference failed for: r65v0, types: [org.jsoup.parser.TokeniserState$66] */
    /* JADX WARN: Type inference failed for: r66v0, types: [org.jsoup.parser.TokeniserState$67] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.jsoup.parser.TokeniserState$7] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.jsoup.parser.TokeniserState$8] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.jsoup.parser.TokeniserState$9] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.jsoup.parser.TokeniserState$10] */
    static {
        ?? r02 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.1
            /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
            
                r9 = k6.a.b(r5, r9.f17325h, r0, r4 - r0);
             */
            @Override // org.jsoup.parser.TokeniserState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void f(org.jsoup.parser.b r8, k6.a r9) {
                /*
                    r7 = this;
                    char r0 = r9.current()
                    if (r0 == 0) goto L53
                    r1 = 38
                    if (r0 == r1) goto L4d
                    r2 = 60
                    if (r0 == r2) goto L47
                    r3 = 65535(0xffff, float:9.1834E-41)
                    if (r0 == r3) goto L3e
                    r9.a()
                    int r0 = r9.f17322e
                    int r3 = r9.f17320c
                L1a:
                    int r4 = r9.f17322e
                    char[] r5 = r9.f17318a
                    if (r4 >= r3) goto L2e
                    char r6 = r5[r4]
                    if (r6 == r1) goto L2e
                    if (r6 == r2) goto L2e
                    if (r6 != 0) goto L29
                    goto L2e
                L29:
                    int r4 = r4 + 1
                    r9.f17322e = r4
                    goto L1a
                L2e:
                    if (r4 <= r0) goto L38
                    java.lang.String[] r9 = r9.f17325h
                    int r4 = r4 - r0
                    java.lang.String r9 = k6.a.b(r5, r9, r0, r4)
                    goto L3a
                L38:
                    java.lang.String r9 = ""
                L3a:
                    r8.g(r9)
                    return
                L3e:
                    k6.k r9 = new k6.k
                    r9.<init>()
                    r8.h(r9)
                    return
                L47:
                    org.jsoup.parser.TokeniserState$8 r9 = org.jsoup.parser.TokeniserState.f19300q
                    r8.a(r9)
                    return
                L4d:
                    org.jsoup.parser.TokeniserState$2 r9 = org.jsoup.parser.TokeniserState.f19282e
                    r8.a(r9)
                    return
                L53:
                    r8.m(r7)
                    char r9 = r9.c()
                    r8.f(r9)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokeniserState.AnonymousClass1.f(org.jsoup.parser.b, k6.a):void");
            }
        };
        f19278b = r02;
        ?? r12 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.2
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                int[] c7 = bVar.c(null, false);
                if (c7 == null) {
                    bVar.f('&');
                } else {
                    bVar.g(new String(c7, 0, c7.length));
                }
                bVar.f19342c = anonymousClass1;
            }
        };
        f19282e = r12;
        ?? r22 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.3
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char current = aVar.current();
                if (current == 0) {
                    bVar.m(this);
                    aVar.advance();
                    bVar.f((char) 65533);
                } else {
                    if (current == '&') {
                        bVar.a(TokeniserState.f19289j);
                        return;
                    }
                    if (current == '<') {
                        bVar.a(TokeniserState.f19306t);
                    } else if (current != 65535) {
                        bVar.g(aVar.consumeToAny('&', '<', 0));
                    } else {
                        bVar.h(new k());
                    }
                }
            }
        };
        f19284f = r22;
        ?? r32 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.4
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                AnonymousClass3 anonymousClass3 = TokeniserState.f19284f;
                int[] c7 = bVar.c(null, false);
                if (c7 == null) {
                    bVar.f('&');
                } else {
                    bVar.g(new String(c7, 0, c7.length));
                }
                bVar.f19342c = anonymousClass3;
            }
        };
        f19289j = r32;
        ?? r42 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.5
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                TokeniserState.b(bVar, aVar, this, TokeniserState.f19312w);
            }
        };
        f19293m = r42;
        ?? r52 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.6
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                TokeniserState.b(bVar, aVar, this, TokeniserState.f19318z);
            }
        };
        f19295n = r52;
        ?? r6 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.7
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char current = aVar.current();
                if (current == 0) {
                    bVar.m(this);
                    aVar.advance();
                    bVar.f((char) 65533);
                } else if (current != 65535) {
                    bVar.g(aVar.consumeTo((char) 0));
                } else {
                    bVar.h(new k());
                }
            }
        };
        f19298p = r6;
        ?? r7 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.8
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char current = aVar.current();
                if (current == '!') {
                    bVar.a(TokeniserState.f19277a0);
                    return;
                }
                if (current == '/') {
                    bVar.a(TokeniserState.f19302r);
                    return;
                }
                if (current == '?') {
                    bVar.a(TokeniserState.f19276Z);
                    return;
                }
                if (aVar.j()) {
                    bVar.d(true);
                    bVar.f19342c = TokeniserState.f19304s;
                } else {
                    bVar.m(this);
                    bVar.f('<');
                    bVar.f19342c = TokeniserState.f19278b;
                }
            }
        };
        f19300q = r7;
        ?? r8 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.9
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                boolean isEmpty = aVar.isEmpty();
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (isEmpty) {
                    bVar.l(this);
                    bVar.g("</");
                    bVar.f19342c = anonymousClass1;
                } else if (aVar.j()) {
                    bVar.d(false);
                    bVar.f19342c = TokeniserState.f19304s;
                } else if (aVar.h('>')) {
                    bVar.m(this);
                    bVar.a(anonymousClass1);
                } else {
                    bVar.m(this);
                    bVar.a(TokeniserState.f19276Z);
                }
            }
        };
        f19302r = r8;
        ?? r9 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.10
            /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
            
                r0 = k6.a.b(r10, r14.f17325h, r0, r2 - r0);
             */
            @Override // org.jsoup.parser.TokeniserState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void f(org.jsoup.parser.b r13, k6.a r14) {
                /*
                    r12 = this;
                    r14.a()
                    int r0 = r14.f17322e
                    int r1 = r14.f17320c
                L7:
                    int r2 = r14.f17322e
                    r3 = 62
                    r4 = 47
                    r5 = 32
                    r6 = 12
                    r7 = 13
                    r8 = 10
                    r9 = 9
                    char[] r10 = r14.f17318a
                    if (r2 >= r1) goto L33
                    char r11 = r10[r2]
                    if (r11 == r9) goto L33
                    if (r11 == r8) goto L33
                    if (r11 == r7) goto L33
                    if (r11 == r6) goto L33
                    if (r11 == r5) goto L33
                    if (r11 == r4) goto L33
                    if (r11 == r3) goto L33
                    if (r11 != 0) goto L2e
                    goto L33
                L2e:
                    int r2 = r2 + 1
                    r14.f17322e = r2
                    goto L7
                L33:
                    if (r2 <= r0) goto L3d
                    java.lang.String[] r1 = r14.f17325h
                    int r2 = r2 - r0
                    java.lang.String r0 = k6.a.b(r10, r1, r0, r2)
                    goto L3f
                L3d:
                    java.lang.String r0 = ""
                L3f:
                    k6.n r1 = r13.f19348i
                    r1.l(r0)
                    char r14 = r14.c()
                    if (r14 == 0) goto L82
                    if (r14 == r5) goto L7d
                    if (r14 == r4) goto L78
                    org.jsoup.parser.TokeniserState$1 r0 = org.jsoup.parser.TokeniserState.f19278b
                    if (r14 == r3) goto L72
                    r1 = 65535(0xffff, float:9.1834E-41)
                    if (r14 == r1) goto L6c
                    if (r14 == r9) goto L7d
                    if (r14 == r8) goto L7d
                    if (r14 == r6) goto L7d
                    if (r14 == r7) goto L7d
                    k6.n r13 = r13.f19348i
                    r13.getClass()
                    java.lang.String r14 = java.lang.String.valueOf(r14)
                    r13.l(r14)
                    return
                L6c:
                    r13.l(r12)
                    r13.f19342c = r0
                    return
                L72:
                    r13.k()
                    r13.f19342c = r0
                    return
                L78:
                    org.jsoup.parser.TokeniserState$42 r14 = org.jsoup.parser.TokeniserState.f19275Y
                    r13.f19342c = r14
                    return
                L7d:
                    org.jsoup.parser.TokeniserState$34 r14 = org.jsoup.parser.TokeniserState.f19267Q
                    r13.f19342c = r14
                    return
                L82:
                    k6.n r13 = r13.f19348i
                    java.lang.String r14 = org.jsoup.parser.TokeniserState.f19252C0
                    r13.l(r14)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokeniserState.AnonymousClass10.f(org.jsoup.parser.b, k6.a):void");
            }
        };
        f19304s = r9;
        ?? r10 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.11
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.h(JsonPointer.SEPARATOR)) {
                    bVar.e();
                    bVar.a(TokeniserState.f19308u);
                    return;
                }
                if (aVar.j() && bVar.f19354o != null) {
                    String str = "</" + bVar.f19354o;
                    Locale locale = Locale.ENGLISH;
                    String lowerCase = str.toLowerCase(locale);
                    String upperCase = str.toUpperCase(locale);
                    if (aVar.k(lowerCase) <= -1 && aVar.k(upperCase) <= -1) {
                        n d7 = bVar.d(false);
                        d7.n(bVar.f19354o);
                        bVar.f19348i = d7;
                        bVar.k();
                        aVar.l();
                        bVar.f19342c = TokeniserState.f19278b;
                        return;
                    }
                }
                bVar.g("<");
                bVar.f19342c = TokeniserState.f19284f;
            }
        };
        f19306t = r10;
        ?? r11 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.12
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (!aVar.j()) {
                    bVar.g("</");
                    bVar.f19342c = TokeniserState.f19284f;
                    return;
                }
                bVar.d(false);
                n nVar = bVar.f19348i;
                char current = aVar.current();
                nVar.getClass();
                nVar.l(String.valueOf(current));
                bVar.f19347h.append(aVar.current());
                bVar.a(TokeniserState.f19310v);
            }
        };
        f19308u = r11;
        ?? r122 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.13
            public static void g(b bVar, k6.a aVar) {
                bVar.g("</" + bVar.f19347h.toString());
                aVar.l();
                bVar.f19342c = TokeniserState.f19284f;
            }

            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.j()) {
                    String d7 = aVar.d();
                    bVar.f19348i.l(d7);
                    bVar.f19347h.append(d7);
                    return;
                }
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    if (bVar.n()) {
                        bVar.f19342c = TokeniserState.f19267Q;
                        return;
                    } else {
                        g(bVar, aVar);
                        return;
                    }
                }
                if (c7 == '/') {
                    if (bVar.n()) {
                        bVar.f19342c = TokeniserState.f19275Y;
                        return;
                    } else {
                        g(bVar, aVar);
                        return;
                    }
                }
                if (c7 != '>') {
                    g(bVar, aVar);
                } else if (!bVar.n()) {
                    g(bVar, aVar);
                } else {
                    bVar.k();
                    bVar.f19342c = TokeniserState.f19278b;
                }
            }
        };
        f19310v = r122;
        ?? r13 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.14
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.h(JsonPointer.SEPARATOR)) {
                    bVar.e();
                    bVar.a(TokeniserState.f19314x);
                } else {
                    bVar.f('<');
                    bVar.f19342c = TokeniserState.f19293m;
                }
            }
        };
        f19312w = r13;
        ?? r14 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.15
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                AnonymousClass16 anonymousClass16 = TokeniserState.f19316y;
                AnonymousClass5 anonymousClass5 = TokeniserState.f19293m;
                if (aVar.j()) {
                    bVar.d(false);
                    bVar.f19342c = anonymousClass16;
                } else {
                    bVar.g("</");
                    bVar.f19342c = anonymousClass5;
                }
            }
        };
        f19314x = r14;
        ?? r15 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.16
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                TokeniserState.d(bVar, aVar, TokeniserState.f19293m);
            }
        };
        f19316y = r15;
        ?? r16 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.17
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '!') {
                    bVar.g("<!");
                    bVar.f19342c = TokeniserState.f19251C;
                } else if (c7 == '/') {
                    bVar.e();
                    bVar.f19342c = TokeniserState.f19247A;
                } else {
                    bVar.g("<");
                    aVar.l();
                    bVar.f19342c = TokeniserState.f19295n;
                }
            }
        };
        f19318z = r16;
        ?? r17 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.18
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                AnonymousClass19 anonymousClass19 = TokeniserState.f19249B;
                AnonymousClass6 anonymousClass6 = TokeniserState.f19295n;
                if (aVar.j()) {
                    bVar.d(false);
                    bVar.f19342c = anonymousClass19;
                } else {
                    bVar.g("</");
                    bVar.f19342c = anonymousClass6;
                }
            }
        };
        f19247A = r17;
        ?? r18 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.19
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                TokeniserState.d(bVar, aVar, TokeniserState.f19295n);
            }
        };
        f19249B = r18;
        ?? r19 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.20
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (!aVar.h('-')) {
                    bVar.f19342c = TokeniserState.f19295n;
                } else {
                    bVar.f('-');
                    bVar.a(TokeniserState.f19253D);
                }
            }
        };
        f19251C = r19;
        ?? r20 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.21
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (!aVar.h('-')) {
                    bVar.f19342c = TokeniserState.f19295n;
                } else {
                    bVar.f('-');
                    bVar.a(TokeniserState.f19257G);
                }
            }
        };
        f19253D = r20;
        ?? r21 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.22
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.isEmpty()) {
                    bVar.l(this);
                    bVar.f19342c = TokeniserState.f19278b;
                    return;
                }
                char current = aVar.current();
                if (current == 0) {
                    bVar.m(this);
                    aVar.advance();
                    bVar.f((char) 65533);
                } else if (current == '-') {
                    bVar.f('-');
                    bVar.a(TokeniserState.f19256F);
                } else if (current != '<') {
                    bVar.g(aVar.consumeToAny('-', '<', 0));
                } else {
                    bVar.a(TokeniserState.f19258H);
                }
            }
        };
        f19255E = r21;
        ?? r222 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.23
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.isEmpty()) {
                    bVar.l(this);
                    bVar.f19342c = TokeniserState.f19278b;
                    return;
                }
                char c7 = aVar.c();
                AnonymousClass22 anonymousClass22 = TokeniserState.f19255E;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f((char) 65533);
                    bVar.f19342c = anonymousClass22;
                } else if (c7 == '-') {
                    bVar.f(c7);
                    bVar.f19342c = TokeniserState.f19257G;
                } else if (c7 == '<') {
                    bVar.f19342c = TokeniserState.f19258H;
                } else {
                    bVar.f(c7);
                    bVar.f19342c = anonymousClass22;
                }
            }
        };
        f19256F = r222;
        ?? r23 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.24
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.isEmpty()) {
                    bVar.l(this);
                    bVar.f19342c = TokeniserState.f19278b;
                    return;
                }
                char c7 = aVar.c();
                AnonymousClass22 anonymousClass22 = TokeniserState.f19255E;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f((char) 65533);
                    bVar.f19342c = anonymousClass22;
                } else {
                    if (c7 == '-') {
                        bVar.f(c7);
                        return;
                    }
                    if (c7 == '<') {
                        bVar.f19342c = TokeniserState.f19258H;
                    } else if (c7 != '>') {
                        bVar.f(c7);
                        bVar.f19342c = anonymousClass22;
                    } else {
                        bVar.f(c7);
                        bVar.f19342c = TokeniserState.f19295n;
                    }
                }
            }
        };
        f19257G = r23;
        ?? r24 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.25
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.j()) {
                    bVar.e();
                    bVar.f19347h.append(aVar.current());
                    bVar.g("<" + aVar.current());
                    bVar.a(TokeniserState.f19261K);
                    return;
                }
                if (aVar.h(JsonPointer.SEPARATOR)) {
                    bVar.e();
                    bVar.a(TokeniserState.f19259I);
                } else {
                    bVar.f('<');
                    bVar.f19342c = TokeniserState.f19255E;
                }
            }
        };
        f19258H = r24;
        ?? r25 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.26
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (!aVar.j()) {
                    bVar.g("</");
                    bVar.f19342c = TokeniserState.f19255E;
                    return;
                }
                bVar.d(false);
                n nVar = bVar.f19348i;
                char current = aVar.current();
                nVar.getClass();
                nVar.l(String.valueOf(current));
                bVar.f19347h.append(aVar.current());
                bVar.a(TokeniserState.f19260J);
            }
        };
        f19259I = r25;
        ?? r26 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.27
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                TokeniserState.d(bVar, aVar, TokeniserState.f19255E);
            }
        };
        f19260J = r26;
        ?? r27 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.28
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                TokeniserState.e(bVar, aVar, TokeniserState.f19262L, TokeniserState.f19255E);
            }
        };
        f19261K = r27;
        ?? r28 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.29
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char current = aVar.current();
                if (current == 0) {
                    bVar.m(this);
                    aVar.advance();
                    bVar.f((char) 65533);
                } else if (current == '-') {
                    bVar.f(current);
                    bVar.a(TokeniserState.f19263M);
                } else if (current == '<') {
                    bVar.f(current);
                    bVar.a(TokeniserState.f19265O);
                } else if (current != 65535) {
                    bVar.g(aVar.consumeToAny('-', '<', 0));
                } else {
                    bVar.l(this);
                    bVar.f19342c = TokeniserState.f19278b;
                }
            }
        };
        f19262L = r28;
        ?? r29 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.30
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass29 anonymousClass29 = TokeniserState.f19262L;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f((char) 65533);
                    bVar.f19342c = anonymousClass29;
                } else if (c7 == '-') {
                    bVar.f(c7);
                    bVar.f19342c = TokeniserState.f19264N;
                } else if (c7 == '<') {
                    bVar.f(c7);
                    bVar.f19342c = TokeniserState.f19265O;
                } else if (c7 != 65535) {
                    bVar.f(c7);
                    bVar.f19342c = anonymousClass29;
                } else {
                    bVar.l(this);
                    bVar.f19342c = TokeniserState.f19278b;
                }
            }
        };
        f19263M = r29;
        ?? r30 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.31
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass29 anonymousClass29 = TokeniserState.f19262L;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f((char) 65533);
                    bVar.f19342c = anonymousClass29;
                    return;
                }
                if (c7 == '-') {
                    bVar.f(c7);
                    return;
                }
                if (c7 == '<') {
                    bVar.f(c7);
                    bVar.f19342c = TokeniserState.f19265O;
                } else if (c7 == '>') {
                    bVar.f(c7);
                    bVar.f19342c = TokeniserState.f19295n;
                } else if (c7 != 65535) {
                    bVar.f(c7);
                    bVar.f19342c = anonymousClass29;
                } else {
                    bVar.l(this);
                    bVar.f19342c = TokeniserState.f19278b;
                }
            }
        };
        f19264N = r30;
        ?? r31 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.32
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (!aVar.h(JsonPointer.SEPARATOR)) {
                    bVar.f19342c = TokeniserState.f19262L;
                    return;
                }
                bVar.f(JsonPointer.SEPARATOR);
                bVar.e();
                bVar.a(TokeniserState.f19266P);
            }
        };
        f19265O = r31;
        ?? r322 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.33
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                TokeniserState.e(bVar, aVar, TokeniserState.f19255E, TokeniserState.f19262L);
            }
        };
        f19266P = r322;
        ?? r33 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.34
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass35 anonymousClass35 = TokeniserState.f19268R;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19348i.o();
                    aVar.l();
                    bVar.f19342c = anonymousClass35;
                    return;
                }
                if (c7 != ' ') {
                    if (c7 != '\"' && c7 != '\'') {
                        if (c7 == '/') {
                            bVar.f19342c = TokeniserState.f19275Y;
                            return;
                        }
                        AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                        if (c7 == 65535) {
                            bVar.l(this);
                            bVar.f19342c = anonymousClass1;
                            return;
                        }
                        if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r') {
                            return;
                        }
                        switch (c7) {
                            case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                            case '=':
                                break;
                            case '>':
                                bVar.k();
                                bVar.f19342c = anonymousClass1;
                                break;
                            default:
                                bVar.f19348i.o();
                                aVar.l();
                                bVar.f19342c = anonymousClass35;
                                break;
                        }
                        return;
                    }
                    bVar.m(this);
                    bVar.f19348i.o();
                    bVar.f19348i.h(c7);
                    bVar.f19342c = anonymousClass35;
                }
            }
        };
        f19267Q = r33;
        ?? r34 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.35
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                String e3 = aVar.e(TokeniserState.f19248A0);
                n nVar = bVar.f19348i;
                String str = nVar.f17378d;
                if (str != null) {
                    e3 = str.concat(e3);
                }
                nVar.f17378d = e3;
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19348i.h((char) 65533);
                    return;
                }
                if (c7 != ' ') {
                    if (c7 != '\"' && c7 != '\'') {
                        if (c7 == '/') {
                            bVar.f19342c = TokeniserState.f19275Y;
                            return;
                        }
                        AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                        if (c7 == 65535) {
                            bVar.l(this);
                            bVar.f19342c = anonymousClass1;
                            return;
                        }
                        if (c7 != '\t' && c7 != '\n' && c7 != '\f' && c7 != '\r') {
                            switch (c7) {
                                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                                    break;
                                case '=':
                                    bVar.f19342c = TokeniserState.f19270T;
                                    break;
                                case '>':
                                    bVar.k();
                                    bVar.f19342c = anonymousClass1;
                                    break;
                                default:
                                    bVar.f19348i.h(c7);
                                    break;
                            }
                            return;
                        }
                    }
                    bVar.m(this);
                    bVar.f19348i.h(c7);
                    return;
                }
                bVar.f19342c = TokeniserState.f19269S;
            }
        };
        f19268R = r34;
        ?? r35 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.36
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass35 anonymousClass35 = TokeniserState.f19268R;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19348i.h((char) 65533);
                    bVar.f19342c = anonymousClass35;
                    return;
                }
                if (c7 != ' ') {
                    if (c7 != '\"' && c7 != '\'') {
                        if (c7 == '/') {
                            bVar.f19342c = TokeniserState.f19275Y;
                            return;
                        }
                        AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                        if (c7 == 65535) {
                            bVar.l(this);
                            bVar.f19342c = anonymousClass1;
                            return;
                        }
                        if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r') {
                            return;
                        }
                        switch (c7) {
                            case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                                break;
                            case '=':
                                bVar.f19342c = TokeniserState.f19270T;
                                break;
                            case '>':
                                bVar.k();
                                bVar.f19342c = anonymousClass1;
                                break;
                            default:
                                bVar.f19348i.o();
                                aVar.l();
                                bVar.f19342c = anonymousClass35;
                                break;
                        }
                        return;
                    }
                    bVar.m(this);
                    bVar.f19348i.o();
                    bVar.f19348i.h(c7);
                    bVar.f19342c = anonymousClass35;
                }
            }
        };
        f19269S = r35;
        ?? r36 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.37
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass40 anonymousClass40 = TokeniserState.f19273W;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19348i.i((char) 65533);
                    bVar.f19342c = anonymousClass40;
                    return;
                }
                if (c7 != ' ') {
                    if (c7 == '\"') {
                        bVar.f19342c = TokeniserState.f19271U;
                        return;
                    }
                    if (c7 != '`') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                        if (c7 == 65535) {
                            bVar.l(this);
                            bVar.k();
                            bVar.f19342c = anonymousClass1;
                            return;
                        }
                        if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r') {
                            return;
                        }
                        if (c7 == '&') {
                            aVar.l();
                            bVar.f19342c = anonymousClass40;
                            return;
                        }
                        if (c7 == '\'') {
                            bVar.f19342c = TokeniserState.f19272V;
                            return;
                        }
                        switch (c7) {
                            case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                            case '=':
                                break;
                            case '>':
                                bVar.m(this);
                                bVar.k();
                                bVar.f19342c = anonymousClass1;
                                break;
                            default:
                                aVar.l();
                                bVar.f19342c = anonymousClass40;
                                break;
                        }
                        return;
                    }
                    bVar.m(this);
                    bVar.f19348i.i(c7);
                    bVar.f19342c = anonymousClass40;
                }
            }
        };
        f19270T = r36;
        ?? r37 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.38
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                String consumeToAny = aVar.consumeToAny(TokeniserState.f19319z0);
                if (consumeToAny.length() > 0) {
                    bVar.f19348i.j(consumeToAny);
                } else {
                    bVar.f19348i.f17381g = true;
                }
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19348i.i((char) 65533);
                    return;
                }
                if (c7 == '\"') {
                    bVar.f19342c = TokeniserState.f19274X;
                    return;
                }
                if (c7 != '&') {
                    if (c7 != 65535) {
                        bVar.f19348i.i(c7);
                        return;
                    } else {
                        bVar.l(this);
                        bVar.f19342c = TokeniserState.f19278b;
                        return;
                    }
                }
                int[] c8 = bVar.c('\"', true);
                if (c8 != null) {
                    bVar.f19348i.k(c8);
                } else {
                    bVar.f19348i.i('&');
                }
            }
        };
        f19271U = r37;
        ?? r38 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.39
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                String consumeToAny = aVar.consumeToAny(TokeniserState.f19317y0);
                if (consumeToAny.length() > 0) {
                    bVar.f19348i.j(consumeToAny);
                } else {
                    bVar.f19348i.f17381g = true;
                }
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19348i.i((char) 65533);
                    return;
                }
                if (c7 == 65535) {
                    bVar.l(this);
                    bVar.f19342c = TokeniserState.f19278b;
                    return;
                }
                if (c7 != '&') {
                    if (c7 != '\'') {
                        bVar.f19348i.i(c7);
                        return;
                    } else {
                        bVar.f19342c = TokeniserState.f19274X;
                        return;
                    }
                }
                int[] c8 = bVar.c('\'', true);
                if (c8 != null) {
                    bVar.f19348i.k(c8);
                } else {
                    bVar.f19348i.i('&');
                }
            }
        };
        f19272V = r38;
        ?? r39 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.40
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                String e3 = aVar.e(TokeniserState.f19250B0);
                if (e3.length() > 0) {
                    bVar.f19348i.j(e3);
                }
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19348i.i((char) 65533);
                    return;
                }
                if (c7 != ' ') {
                    if (c7 != '\"' && c7 != '`') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                        if (c7 == 65535) {
                            bVar.l(this);
                            bVar.f19342c = anonymousClass1;
                            return;
                        }
                        if (c7 != '\t' && c7 != '\n' && c7 != '\f' && c7 != '\r') {
                            if (c7 == '&') {
                                int[] c8 = bVar.c('>', true);
                                if (c8 != null) {
                                    bVar.f19348i.k(c8);
                                    return;
                                } else {
                                    bVar.f19348i.i('&');
                                    return;
                                }
                            }
                            if (c7 != '\'') {
                                switch (c7) {
                                    case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                                    case '=':
                                        break;
                                    case '>':
                                        bVar.k();
                                        bVar.f19342c = anonymousClass1;
                                        break;
                                    default:
                                        bVar.f19348i.i(c7);
                                        break;
                                }
                                return;
                            }
                        }
                    }
                    bVar.m(this);
                    bVar.f19348i.i(c7);
                    return;
                }
                bVar.f19342c = TokeniserState.f19267Q;
            }
        };
        f19273W = r39;
        ?? r40 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.41
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass34 anonymousClass34 = TokeniserState.f19267Q;
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    bVar.f19342c = anonymousClass34;
                    return;
                }
                if (c7 == '/') {
                    bVar.f19342c = TokeniserState.f19275Y;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.k();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 == 65535) {
                    bVar.l(this);
                    bVar.f19342c = anonymousClass1;
                } else {
                    bVar.m(this);
                    aVar.l();
                    bVar.f19342c = anonymousClass34;
                }
            }
        };
        f19274X = r40;
        ?? r41 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.42
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.f19348i.f17383i = true;
                    bVar.k();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 == 65535) {
                    bVar.l(this);
                    bVar.f19342c = anonymousClass1;
                } else {
                    bVar.m(this);
                    aVar.l();
                    bVar.f19342c = TokeniserState.f19267Q;
                }
            }
        };
        f19275Y = r41;
        ?? r422 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.43
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                aVar.l();
                i iVar = new i();
                iVar.f17370c = true;
                iVar.f17369b.append(aVar.consumeTo('>'));
                bVar.h(iVar);
                bVar.a(TokeniserState.f19278b);
            }
        };
        f19276Z = r422;
        ?? r43 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.44
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.f("--")) {
                    bVar.f19353n.f();
                    bVar.f19342c = TokeniserState.f19279b0;
                } else if (aVar.g("DOCTYPE")) {
                    bVar.f19342c = TokeniserState.f19287h0;
                } else if (aVar.f("[CDATA[")) {
                    bVar.e();
                    bVar.f19342c = TokeniserState.f19315x0;
                } else {
                    bVar.m(this);
                    bVar.a(TokeniserState.f19276Z);
                }
            }
        };
        f19277a0 = r43;
        ?? r44 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.45
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass47 anonymousClass47 = TokeniserState.f19281d0;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19353n.f17369b.append((char) 65533);
                    bVar.f19342c = anonymousClass47;
                    return;
                }
                if (c7 == '-') {
                    bVar.f19342c = TokeniserState.f19280c0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 != 65535) {
                    bVar.f19353n.f17369b.append(c7);
                    bVar.f19342c = anonymousClass47;
                } else {
                    bVar.l(this);
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19279b0 = r44;
        ?? r45 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.46
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass47 anonymousClass47 = TokeniserState.f19281d0;
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19353n.f17369b.append((char) 65533);
                    bVar.f19342c = anonymousClass47;
                    return;
                }
                if (c7 == '-') {
                    bVar.f19342c = TokeniserState.f19280c0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 != 65535) {
                    bVar.f19353n.f17369b.append(c7);
                    bVar.f19342c = anonymousClass47;
                } else {
                    bVar.l(this);
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19280c0 = r45;
        ?? r46 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.47
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char current = aVar.current();
                if (current == 0) {
                    bVar.m(this);
                    aVar.advance();
                    bVar.f19353n.f17369b.append((char) 65533);
                } else if (current == '-') {
                    bVar.a(TokeniserState.f19283e0);
                } else {
                    if (current != 65535) {
                        bVar.f19353n.f17369b.append(aVar.consumeToAny('-', 0));
                        return;
                    }
                    bVar.l(this);
                    bVar.i();
                    bVar.f19342c = TokeniserState.f19278b;
                }
            }
        };
        f19281d0 = r46;
        ?? r47 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.48
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass47 anonymousClass47 = TokeniserState.f19281d0;
                if (c7 == 0) {
                    bVar.m(this);
                    StringBuilder sb = bVar.f19353n.f17369b;
                    sb.append('-');
                    sb.append((char) 65533);
                    bVar.f19342c = anonymousClass47;
                    return;
                }
                if (c7 == '-') {
                    bVar.f19342c = TokeniserState.f19285f0;
                    return;
                }
                if (c7 == 65535) {
                    bVar.l(this);
                    bVar.i();
                    bVar.f19342c = TokeniserState.f19278b;
                } else {
                    StringBuilder sb2 = bVar.f19353n.f17369b;
                    sb2.append('-');
                    sb2.append(c7);
                    bVar.f19342c = anonymousClass47;
                }
            }
        };
        f19283e0 = r47;
        ?? r48 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.49
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass47 anonymousClass47 = TokeniserState.f19281d0;
                if (c7 == 0) {
                    bVar.m(this);
                    StringBuilder sb = bVar.f19353n.f17369b;
                    sb.append("--");
                    sb.append((char) 65533);
                    bVar.f19342c = anonymousClass47;
                    return;
                }
                if (c7 == '!') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19286g0;
                    return;
                }
                if (c7 == '-') {
                    bVar.m(this);
                    bVar.f19353n.f17369b.append('-');
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 == 65535) {
                    bVar.l(this);
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                } else {
                    bVar.m(this);
                    StringBuilder sb2 = bVar.f19353n.f17369b;
                    sb2.append("--");
                    sb2.append(c7);
                    bVar.f19342c = anonymousClass47;
                }
            }
        };
        f19285f0 = r48;
        ?? r49 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.50
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass47 anonymousClass47 = TokeniserState.f19281d0;
                if (c7 == 0) {
                    bVar.m(this);
                    StringBuilder sb = bVar.f19353n.f17369b;
                    sb.append("--!");
                    sb.append((char) 65533);
                    bVar.f19342c = anonymousClass47;
                    return;
                }
                if (c7 == '-') {
                    bVar.f19353n.f17369b.append("--!");
                    bVar.f19342c = TokeniserState.f19283e0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 == 65535) {
                    bVar.l(this);
                    bVar.i();
                    bVar.f19342c = anonymousClass1;
                } else {
                    StringBuilder sb2 = bVar.f19353n.f17369b;
                    sb2.append("--!");
                    sb2.append(c7);
                    bVar.f19342c = anonymousClass47;
                }
            }
        };
        f19286g0 = r49;
        ?? r50 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.51
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass52 anonymousClass52 = TokeniserState.f19288i0;
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    bVar.f19342c = anonymousClass52;
                    return;
                }
                if (c7 != '>') {
                    if (c7 != 65535) {
                        bVar.m(this);
                        bVar.f19342c = anonymousClass52;
                        return;
                    }
                    bVar.l(this);
                }
                bVar.m(this);
                bVar.f19352m.f();
                bVar.f19352m.f17375f = true;
                bVar.j();
                bVar.f19342c = TokeniserState.f19278b;
            }
        };
        f19287h0 = r50;
        ?? r51 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.52
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                boolean j7 = aVar.j();
                AnonymousClass53 anonymousClass53 = TokeniserState.f19290j0;
                if (j7) {
                    bVar.f19352m.f();
                    bVar.f19342c = anonymousClass53;
                    return;
                }
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19352m.f();
                    bVar.f19352m.f17371b.append((char) 65533);
                    bVar.f19342c = anonymousClass53;
                    return;
                }
                if (c7 != ' ') {
                    if (c7 == 65535) {
                        bVar.l(this);
                        bVar.f19352m.f();
                        bVar.f19352m.f17375f = true;
                        bVar.j();
                        bVar.f19342c = TokeniserState.f19278b;
                        return;
                    }
                    if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r') {
                        return;
                    }
                    bVar.f19352m.f();
                    bVar.f19352m.f17371b.append(c7);
                    bVar.f19342c = anonymousClass53;
                }
            }
        };
        f19288i0 = r51;
        ?? r522 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.53
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                if (aVar.j()) {
                    bVar.f19352m.f17371b.append(aVar.d());
                    return;
                }
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19352m.f17371b.append((char) 65533);
                    return;
                }
                if (c7 != ' ') {
                    AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                    if (c7 == '>') {
                        bVar.j();
                        bVar.f19342c = anonymousClass1;
                        return;
                    }
                    if (c7 == 65535) {
                        bVar.l(this);
                        bVar.f19352m.f17375f = true;
                        bVar.j();
                        bVar.f19342c = anonymousClass1;
                        return;
                    }
                    if (c7 != '\t' && c7 != '\n' && c7 != '\f' && c7 != '\r') {
                        bVar.f19352m.f17371b.append(c7);
                        return;
                    }
                }
                bVar.f19342c = TokeniserState.f19291k0;
            }
        };
        f19290j0 = r522;
        ?? r53 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.54
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                boolean isEmpty = aVar.isEmpty();
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (isEmpty) {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (aVar.i('\t', '\n', '\r', '\f', TokenParser.SP)) {
                    aVar.advance();
                    return;
                }
                if (aVar.h('>')) {
                    bVar.j();
                    bVar.a(anonymousClass1);
                    return;
                }
                if (aVar.g("PUBLIC")) {
                    bVar.f19352m.f17372c = "PUBLIC";
                    bVar.f19342c = TokeniserState.f19292l0;
                } else if (aVar.g("SYSTEM")) {
                    bVar.f19352m.f17372c = "SYSTEM";
                    bVar.f19342c = TokeniserState.f19303r0;
                } else {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.a(TokeniserState.f19313w0);
                }
            }
        };
        f19291k0 = r53;
        ?? r54 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.55
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    bVar.f19342c = TokeniserState.f19294m0;
                    return;
                }
                if (c7 == '\"') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19296n0;
                    return;
                }
                if (c7 == '\'') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19297o0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.f19342c = TokeniserState.f19313w0;
                } else {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19292l0 = r54;
        ?? r55 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.56
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    return;
                }
                if (c7 == '\"') {
                    bVar.f19342c = TokeniserState.f19296n0;
                    return;
                }
                if (c7 == '\'') {
                    bVar.f19342c = TokeniserState.f19297o0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.f19342c = TokeniserState.f19313w0;
                } else {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19294m0 = r55;
        ?? r56 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.57
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19352m.f17373d.append((char) 65533);
                    return;
                }
                if (c7 == '\"') {
                    bVar.f19342c = TokeniserState.f19299p0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.f19352m.f17373d.append(c7);
                    return;
                }
                bVar.l(this);
                bVar.f19352m.f17375f = true;
                bVar.j();
                bVar.f19342c = anonymousClass1;
            }
        };
        f19296n0 = r56;
        ?? r57 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.58
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19352m.f17373d.append((char) 65533);
                    return;
                }
                if (c7 == '\'') {
                    bVar.f19342c = TokeniserState.f19299p0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.f19352m.f17373d.append(c7);
                    return;
                }
                bVar.l(this);
                bVar.f19352m.f17375f = true;
                bVar.j();
                bVar.f19342c = anonymousClass1;
            }
        };
        f19297o0 = r57;
        ?? r58 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.59
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    bVar.f19342c = TokeniserState.f19301q0;
                    return;
                }
                if (c7 == '\"') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19307t0;
                    return;
                }
                if (c7 == '\'') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19309u0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 != 65535) {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.f19342c = TokeniserState.f19313w0;
                } else {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19299p0 = r58;
        ?? r59 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.60
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    return;
                }
                if (c7 == '\"') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19307t0;
                    return;
                }
                if (c7 == '\'') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19309u0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 != 65535) {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.f19342c = TokeniserState.f19313w0;
                } else {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19301q0 = r59;
        ?? r60 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.61
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    bVar.f19342c = TokeniserState.f19305s0;
                    return;
                }
                if (c7 == '\"') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19307t0;
                    return;
                }
                if (c7 == '\'') {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19309u0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                } else {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19303r0 = r60;
        ?? r61 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.62
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    return;
                }
                if (c7 == '\"') {
                    bVar.f19342c = TokeniserState.f19307t0;
                    return;
                }
                if (c7 == '\'') {
                    bVar.f19342c = TokeniserState.f19309u0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.f19342c = TokeniserState.f19313w0;
                } else {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19305s0 = r61;
        ?? r62 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.63
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19352m.f17374e.append((char) 65533);
                    return;
                }
                if (c7 == '\"') {
                    bVar.f19342c = TokeniserState.f19311v0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.f19352m.f17374e.append(c7);
                    return;
                }
                bVar.l(this);
                bVar.f19352m.f17375f = true;
                bVar.j();
                bVar.f19342c = anonymousClass1;
            }
        };
        f19307t0 = r62;
        ?? r63 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.64
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == 0) {
                    bVar.m(this);
                    bVar.f19352m.f17374e.append((char) 65533);
                    return;
                }
                if (c7 == '\'') {
                    bVar.f19342c = TokeniserState.f19311v0;
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.m(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                    return;
                }
                if (c7 != 65535) {
                    bVar.f19352m.f17374e.append(c7);
                    return;
                }
                bVar.l(this);
                bVar.f19352m.f17375f = true;
                bVar.j();
                bVar.f19342c = anonymousClass1;
            }
        };
        f19309u0 = r63;
        ?? r64 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.65
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                } else if (c7 != 65535) {
                    bVar.m(this);
                    bVar.f19342c = TokeniserState.f19313w0;
                } else {
                    bVar.l(this);
                    bVar.f19352m.f17375f = true;
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19311v0 = r64;
        ?? r65 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.66
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                char c7 = aVar.c();
                AnonymousClass1 anonymousClass1 = TokeniserState.f19278b;
                if (c7 == '>') {
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                } else {
                    if (c7 != 65535) {
                        return;
                    }
                    bVar.j();
                    bVar.f19342c = anonymousClass1;
                }
            }
        };
        f19313w0 = r65;
        ?? r66 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.67
            @Override // org.jsoup.parser.TokeniserState
            public final void f(b bVar, k6.a aVar) {
                String b7;
                int k7 = aVar.k("]]>");
                String[] strArr = aVar.f17325h;
                char[] cArr = aVar.f17318a;
                if (k7 != -1) {
                    b7 = k6.a.b(cArr, strArr, aVar.f17322e, k7);
                    aVar.f17322e += k7;
                } else {
                    aVar.a();
                    int i2 = aVar.f17322e;
                    b7 = k6.a.b(cArr, strArr, i2, aVar.f17320c - i2);
                    aVar.f17322e = aVar.f17320c;
                }
                bVar.f19347h.append(b7);
                if (aVar.f("]]>") || aVar.isEmpty()) {
                    String sb = bVar.f19347h.toString();
                    g gVar = new g();
                    gVar.f17368b = sb;
                    bVar.h(gVar);
                    bVar.f19342c = TokeniserState.f19278b;
                }
            }
        };
        f19315x0 = r66;
        f19254D0 = new TokeniserState[]{r02, r12, r22, r32, r42, r52, r6, r7, r8, r9, r10, r11, r122, r13, r14, r15, r16, r17, r18, r19, r20, r21, r222, r23, r24, r25, r26, r27, r28, r29, r30, r31, r322, r33, r34, r35, r36, r37, r38, r39, r40, r41, r422, r43, r44, r45, r46, r47, r48, r49, r50, r51, r522, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66};
        f19317y0 = new char[]{0, '&', '\''};
        f19319z0 = new char[]{0, '\"', '&'};
        f19248A0 = new char[]{0, '\t', '\n', '\f', '\r', TokenParser.SP, '\"', '\'', JsonPointer.SEPARATOR, '<', '=', '>'};
        f19250B0 = new char[]{0, '\t', '\n', '\f', '\r', TokenParser.SP, '\"', '&', '\'', '<', '=', '>', '`'};
        f19252C0 = String.valueOf((char) 65533);
    }

    public static void b(b bVar, k6.a aVar, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        char current = aVar.current();
        if (current == 0) {
            bVar.m(tokeniserState);
            aVar.advance();
            bVar.f((char) 65533);
        } else if (current == '<') {
            bVar.a(tokeniserState2);
        } else if (current != 65535) {
            bVar.g(aVar.consumeToAny('<', 0));
        } else {
            bVar.h(new k());
        }
    }

    public static void d(b bVar, k6.a aVar, TokeniserState tokeniserState) {
        if (aVar.j()) {
            String d7 = aVar.d();
            bVar.f19348i.l(d7);
            bVar.f19347h.append(d7);
            return;
        }
        boolean n7 = bVar.n();
        StringBuilder sb = bVar.f19347h;
        if (n7 && !aVar.isEmpty()) {
            char c7 = aVar.c();
            if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                bVar.f19342c = f19267Q;
                return;
            }
            if (c7 == '/') {
                bVar.f19342c = f19275Y;
                return;
            } else {
                if (c7 == '>') {
                    bVar.k();
                    bVar.f19342c = f19278b;
                    return;
                }
                sb.append(c7);
            }
        }
        bVar.g("</" + sb.toString());
        bVar.f19342c = tokeniserState;
    }

    public static void e(b bVar, k6.a aVar, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (aVar.j()) {
            String d7 = aVar.d();
            bVar.f19347h.append(d7);
            bVar.g(d7);
            return;
        }
        char c7 = aVar.c();
        if (c7 != '\t' && c7 != '\n' && c7 != '\f' && c7 != '\r' && c7 != ' ' && c7 != '/' && c7 != '>') {
            aVar.l();
            bVar.f19342c = tokeniserState2;
        } else {
            if (bVar.f19347h.toString().equals("script")) {
                bVar.f19342c = tokeniserState;
            } else {
                bVar.f19342c = tokeniserState2;
            }
            bVar.f(c7);
        }
    }

    public static TokeniserState valueOf(String str) {
        return (TokeniserState) Enum.valueOf(TokeniserState.class, str);
    }

    public static TokeniserState[] values() {
        return (TokeniserState[]) f19254D0.clone();
    }

    public abstract void f(b bVar, k6.a aVar);
}
