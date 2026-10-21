package m1;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: m1.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1274c0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18362a;

    public C1274c0(RecyclerView recyclerView) {
        this.f18362a = recyclerView;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAnimationFinished(m1.B0 r10) {
        /*
            r9 = this;
            r0 = 1
            r10.setIsRecyclable(r0)
            m1.B0 r1 = r10.f18224h
            r2 = 0
            if (r1 == 0) goto Lf
            m1.B0 r1 = r10.f18225i
            if (r1 != 0) goto Lf
            r10.f18224h = r2
        Lf:
            r10.f18225i = r2
            int r1 = r10.f18226j
            r1 = r1 & 16
            if (r1 == 0) goto L19
            goto L9d
        L19:
            androidx.recyclerview.widget.RecyclerView r1 = r9.f18362a
            r1.b0()
            m1.d r2 = r1.f8058n
            m1.c r3 = r2.f18364b
            m1.T r4 = r2.f18363a
            int r5 = r2.f18366d
            android.view.View r6 = r10.f18217a
            r7 = 0
            if (r5 != r0) goto L39
            android.view.View r0 = r2.f18367e
            if (r0 != r6) goto L31
        L2f:
            r0 = r7
            goto L60
        L31:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot call removeViewIfHidden within removeView(At) for a different view"
            r10.<init>(r0)
            throw r10
        L39:
            r8 = 2
            if (r5 == r8) goto La1
            r2.f18366d = r8     // Catch: java.lang.Throwable -> L4b
            int r5 = r4.indexOfChild(r6)     // Catch: java.lang.Throwable -> L4b
            r8 = -1
            if (r5 != r8) goto L4d
            r2.g(r6)     // Catch: java.lang.Throwable -> L4b
        L48:
            r2.f18366d = r7
            goto L60
        L4b:
            r10 = move-exception
            goto L9e
        L4d:
            boolean r8 = r3.d(r5)     // Catch: java.lang.Throwable -> L4b
            if (r8 == 0) goto L5d
            r3.f(r5)     // Catch: java.lang.Throwable -> L4b
            r2.g(r6)     // Catch: java.lang.Throwable -> L4b
            r4.removeViewAt(r5)     // Catch: java.lang.Throwable -> L4b
            goto L48
        L5d:
            r2.f18366d = r7
            goto L2f
        L60:
            if (r0 == 0) goto L8d
            m1.B0 r2 = androidx.recyclerview.widget.RecyclerView.E(r6)
            m1.p0 r3 = r1.f8047f
            r3.j(r2)
            r3.g(r2)
            boolean r2 = androidx.recyclerview.widget.RecyclerView.f7999K0
            if (r2 == 0) goto L8d
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "after removing animated view: "
            r2.<init>(r3)
            r2.append(r6)
            java.lang.String r3 = ", "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "RecyclerView"
            android.util.Log.d(r3, r2)
        L8d:
            r2 = r0 ^ 1
            r1.c0(r2)
            if (r0 != 0) goto L9d
            boolean r10 = r10.h()
            if (r10 == 0) goto L9d
            r1.removeDetachedView(r6, r7)
        L9d:
            return
        L9e:
            r2.f18366d = r7
            throw r10
        La1:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot call removeViewIfHidden within removeViewIfHidden"
            r10.<init>(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.C1274c0.onAnimationFinished(m1.B0):void");
    }
}
