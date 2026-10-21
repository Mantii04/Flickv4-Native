package P5;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class d implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public int f2728b = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f2729e;

    /* renamed from: f, reason: collision with root package name */
    public int f2730f;

    /* renamed from: j, reason: collision with root package name */
    public M5.e f2731j;

    /* renamed from: m, reason: collision with root package name */
    public int f2732m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ e f2733n;

    public d(e eVar) {
        int i2;
        CharSequence charSequence;
        this.f2733n = eVar;
        i2 = eVar.f2735b;
        charSequence = eVar.f2734a;
        int coerceIn = M5.g.coerceIn(i2, 0, charSequence.length());
        this.f2729e = coerceIn;
        this.f2730f = coerceIn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        if (r2 < r5) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r7 = this;
            int r0 = r7.f2730f
            r1 = 0
            if (r0 >= 0) goto Lb
            r7.f2728b = r1
            r0 = 0
            r7.f2731j = r0
            return
        Lb:
            P5.e r0 = r7.f2733n
            int r2 = P5.e.access$getLimit$p(r0)
            r3 = -1
            r4 = 1
            if (r2 <= 0) goto L20
            int r2 = r7.f2732m
            int r2 = r2 + r4
            r7.f2732m = r2
            int r5 = P5.e.access$getLimit$p(r0)
            if (r2 >= r5) goto L2c
        L20:
            int r2 = r7.f2730f
            java.lang.CharSequence r5 = P5.e.access$getInput$p(r0)
            int r5 = r5.length()
            if (r2 <= r5) goto L40
        L2c:
            M5.e r1 = new M5.e
            int r2 = r7.f2729e
            java.lang.CharSequence r0 = P5.e.access$getInput$p(r0)
            int r0 = kotlin.text.StringsKt__StringsKt.getLastIndex(r0)
            r1.<init>(r2, r0)
            r7.f2731j = r1
            r7.f2730f = r3
            goto L8f
        L40:
            H5.p r2 = P5.e.access$getGetNextMatch$p(r0)
            java.lang.CharSequence r5 = P5.e.access$getInput$p(r0)
            int r6 = r7.f2730f
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            java.lang.Object r2 = r2.invoke(r5, r6)
            kotlin.Pair r2 = (kotlin.Pair) r2
            if (r2 != 0) goto L6a
            M5.e r1 = new M5.e
            int r2 = r7.f2729e
            java.lang.CharSequence r0 = P5.e.access$getInput$p(r0)
            int r0 = kotlin.text.StringsKt__StringsKt.getLastIndex(r0)
            r1.<init>(r2, r0)
            r7.f2731j = r1
            r7.f2730f = r3
            goto L8f
        L6a:
            java.lang.Object r0 = r2.component1()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            java.lang.Object r2 = r2.component2()
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            int r3 = r7.f2729e
            M5.e r3 = M5.g.until(r3, r0)
            r7.f2731j = r3
            int r0 = r0 + r2
            r7.f2729e = r0
            if (r2 != 0) goto L8c
            r1 = r4
        L8c:
            int r0 = r0 + r1
            r7.f2730f = r0
        L8f:
            r7.f2728b = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: P5.d.a():void");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f2728b == -1) {
            a();
        }
        return this.f2728b == 1;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public M5.e next() {
        if (this.f2728b == -1) {
            a();
        }
        if (this.f2728b == 0) {
            throw new NoSuchElementException();
        }
        M5.e eVar = this.f2731j;
        kotlin.jvm.internal.j.checkNotNull(eVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.f2731j = null;
        this.f2728b = -1;
        return eVar;
    }
}
