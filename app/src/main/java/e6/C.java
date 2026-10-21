package e6;

/* loaded from: classes2.dex */
public final class C implements L {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0872n f13978b;

    /* renamed from: e, reason: collision with root package name */
    public final C0870l f13979e;

    /* renamed from: f, reason: collision with root package name */
    public H f13980f;

    /* renamed from: j, reason: collision with root package name */
    public int f13981j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f13982m;

    /* renamed from: n, reason: collision with root package name */
    public long f13983n;

    public C(InterfaceC0872n upstream) {
        kotlin.jvm.internal.j.checkNotNullParameter(upstream, "upstream");
        this.f13978b = upstream;
        C0870l buffer = upstream.getBuffer();
        this.f13979e = buffer;
        H h7 = buffer.f14019b;
        this.f13980f = h7;
        this.f13981j = h7 != null ? h7.f13992b : -1;
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13982m = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        if (r3 == r5.f13992b) goto L15;
     */
    @Override // e6.L
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(e6.C0870l r9, long r10) {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            kotlin.jvm.internal.j.checkNotNullParameter(r9, r0)
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 < 0) goto L70
            boolean r3 = r8.f13982m
            if (r3 != 0) goto L68
            e6.H r3 = r8.f13980f
            e6.l r4 = r8.f13979e
            if (r3 == 0) goto L2b
            e6.H r5 = r4.f14019b
            if (r3 != r5) goto L23
            int r3 = r8.f13981j
            kotlin.jvm.internal.j.checkNotNull(r5)
            int r5 = r5.f13992b
            if (r3 != r5) goto L23
            goto L2b
        L23:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "Peek source is invalid because upstream source was used"
            r9.<init>(r10)
            throw r9
        L2b:
            if (r2 != 0) goto L2e
            return r0
        L2e:
            long r0 = r8.f13983n
            r2 = 1
            long r0 = r0 + r2
            e6.n r2 = r8.f13978b
            boolean r0 = r2.request(r0)
            if (r0 != 0) goto L3e
            r9 = -1
            return r9
        L3e:
            e6.H r0 = r8.f13980f
            if (r0 != 0) goto L4f
            e6.H r0 = r4.f14019b
            if (r0 == 0) goto L4f
            r8.f13980f = r0
            kotlin.jvm.internal.j.checkNotNull(r0)
            int r0 = r0.f13992b
            r8.f13981j = r0
        L4f:
            long r0 = r4.size()
            long r2 = r8.f13983n
            long r0 = r0 - r2
            long r6 = java.lang.Math.min(r10, r0)
            e6.l r2 = r8.f13979e
            long r4 = r8.f13983n
            r3 = r9
            r2.copyTo(r3, r4, r6)
            long r9 = r8.f13983n
            long r9 = r9 + r6
            r8.f13983n = r9
            return r6
        L68:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "closed"
            r9.<init>(r10)
            throw r9
        L70:
            java.lang.String r9 = "byteCount < 0: "
            java.lang.String r9 = A.i.i(r9, r10)
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.C.read(e6.l, long):long");
    }

    @Override // e6.L
    public O timeout() {
        return this.f13978b.timeout();
    }
}
