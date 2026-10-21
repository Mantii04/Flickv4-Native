package com.google.common.collect;

import Q3.j0;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class y extends Q3.r {

    /* renamed from: a, reason: collision with root package name */
    public j0 f13176a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13177b;

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0048 -> B:9:0x002a). Please report as a decompilation issue!!! */
    @Override // Q3.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.common.collect.y addAll(java.lang.Iterable<java.lang.Object> r5) {
        /*
            r4 = this;
            Q3.j0 r0 = r4.f13176a
            java.util.Objects.requireNonNull(r0)
            boolean r0 = r5 instanceof Q3.f0
            if (r0 == 0) goto L81
            Q3.f0 r5 = (Q3.f0) r5
            boolean r0 = r5 instanceof com.google.common.collect.RegularImmutableMultiset
            if (r0 == 0) goto L15
            r0 = r5
            com.google.common.collect.RegularImmutableMultiset r0 = (com.google.common.collect.RegularImmutableMultiset) r0
            Q3.j0 r0 = r0.f13113j
            goto L16
        L15:
            r0 = 0
        L16:
            if (r0 == 0) goto L4b
            Q3.j0 r5 = r4.f13176a
            int r1 = r5.f2895c
            int r2 = r0.f2895c
            int r1 = java.lang.Math.max(r1, r2)
            r5.a(r1)
            int r5 = r0.f2895c
            r1 = -1
            if (r5 != 0) goto L2c
        L2a:
            r5 = r1
            goto L2d
        L2c:
            r5 = 0
        L2d:
            if (r5 < 0) goto L80
            int r2 = r0.f2895c
            P3.v.checkElementIndex(r5, r2)
            java.lang.Object[] r2 = r0.f2893a
            r2 = r2[r5]
            int r3 = r0.f2895c
            P3.v.checkElementIndex(r5, r3)
            int[] r3 = r0.f2894b
            r3 = r3[r5]
            r4.addCopies(r2, r3)
            int r5 = r5 + 1
            int r2 = r0.f2895c
            if (r5 >= r2) goto L2a
            goto L2d
        L4b:
            java.util.Set r0 = r5.entrySet()
            Q3.j0 r1 = r4.f13176a
            int r2 = r1.f2895c
            int r0 = r0.size()
            int r0 = java.lang.Math.max(r2, r0)
            r1.a(r0)
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L66:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L80
            java.lang.Object r0 = r5.next()
            Q3.g0 r0 = (Q3.g0) r0
            Q3.i0 r0 = (Q3.i0) r0
            java.lang.Object r1 = r0.getElement()
            int r0 = r0.getCount()
            r4.addCopies(r1, r0)
            goto L66
        L80:
            return r4
        L81:
            super.addAll(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.y.addAll(java.lang.Iterable):com.google.common.collect.y");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003b -> B:9:0x001d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.common.collect.y addCopies(java.lang.Object r7, int r8) {
        /*
            r6 = this;
            Q3.j0 r0 = r6.f13176a
            java.util.Objects.requireNonNull(r0)
            if (r8 != 0) goto L8
            return r6
        L8:
            boolean r0 = r6.f13177b
            if (r0 == 0) goto L40
            Q3.j0 r0 = new Q3.j0
            Q3.j0 r1 = r6.f13176a
            r0.<init>()
            int r2 = r1.f2895c
            r0.c(r2)
            int r2 = r1.f2895c
            r3 = -1
            if (r2 != 0) goto L1f
        L1d:
            r2 = r3
            goto L20
        L1f:
            r2 = 0
        L20:
            if (r2 == r3) goto L3e
            int r4 = r1.f2895c
            P3.v.checkElementIndex(r2, r4)
            java.lang.Object[] r4 = r1.f2893a
            r4 = r4[r2]
            int r5 = r1.f2895c
            P3.v.checkElementIndex(r2, r5)
            int[] r5 = r1.f2894b
            r5 = r5[r2]
            r0.put(r4, r5)
            int r2 = r2 + 1
            int r4 = r1.f2895c
            if (r2 >= r4) goto L1d
            goto L20
        L3e:
            r6.f13176a = r0
        L40:
            r0 = 0
            r6.f13177b = r0
            P3.v.checkNotNull(r7)
            Q3.j0 r0 = r6.f13176a
            int r1 = r0.get(r7)
            int r1 = r1 + r8
            r0.put(r7, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.y.addCopies(java.lang.Object, int):com.google.common.collect.y");
    }

    public ImmutableMultiset<Object> build() {
        Objects.requireNonNull(this.f13176a);
        if (this.f13176a.f2895c == 0) {
            return ImmutableMultiset.of();
        }
        this.f13177b = true;
        return new RegularImmutableMultiset(this.f13176a);
    }

    @Override // Q3.r
    public y add(Object obj) {
        return addCopies(obj, 1);
    }
}
