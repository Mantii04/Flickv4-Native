package e;

/* loaded from: classes.dex */
public final class k0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p0 f13775b;

    public k0(p0 p0Var) {
        this.f13775b = p0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r6 = this;
            e.p0 r0 = r6.f13775b
            android.view.Window$Callback r1 = r0.f13809b
            boolean r2 = r0.f13812e
            l.r2 r3 = r0.f13808a
            if (r2 != 0) goto L1a
            e.m0 r2 = new e.m0
            r2.<init>(r0)
            e.n0 r4 = new e.n0
            r4.<init>(r0)
            r3.setMenuCallbacks(r2, r4)
            r2 = 1
            r0.f13812e = r2
        L1a:
            android.view.Menu r0 = r3.getMenu()
            boolean r2 = r0 instanceof k.C1084p
            r3 = 0
            if (r2 == 0) goto L27
            r2 = r0
            k.p r2 = (k.C1084p) r2
            goto L28
        L27:
            r2 = r3
        L28:
            if (r2 == 0) goto L2d
            r2.stopDispatchingItemsChanged()
        L2d:
            r0.clear()     // Catch: java.lang.Throwable -> L3e
            r4 = 0
            boolean r5 = r1.onCreatePanelMenu(r4, r0)     // Catch: java.lang.Throwable -> L3e
            if (r5 == 0) goto L40
            boolean r1 = r1.onPreparePanel(r4, r3, r0)     // Catch: java.lang.Throwable -> L3e
            if (r1 != 0) goto L43
            goto L40
        L3e:
            r0 = move-exception
            goto L49
        L40:
            r0.clear()     // Catch: java.lang.Throwable -> L3e
        L43:
            if (r2 == 0) goto L48
            r2.startDispatchingItemsChanged()
        L48:
            return
        L49:
            if (r2 == 0) goto L4e
            r2.startDispatchingItemsChanged()
        L4e:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.k0.run():void");
    }
}
