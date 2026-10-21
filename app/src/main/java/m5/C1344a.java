package m5;

import android.os.PowerManager;
import o5.InterfaceC1472d;
import s5.AbstractC1643b;

/* renamed from: m5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1344a implements InterfaceC1472d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RunnableC1345b f18729a;

    public C1344a(RunnableC1345b runnableC1345b) {
        this.f18729a = runnableC1345b;
    }

    @Override // o5.InterfaceC1472d
    public void onFailure(String str) {
        RunnableC1345b runnableC1345b = this.f18729a;
        PowerManager.WakeLock wakeLock = runnableC1345b.f18734m;
        if (wakeLock != null) {
            try {
                if (wakeLock.isHeld()) {
                    wakeLock.release();
                }
            } catch (Exception unused) {
            }
        }
        AbstractC1643b.e("ConfigSyncJob", "Seed-mode config sync failed: %s", str);
        RunnableC1345b.a(runnableC1345b, "seed network error");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    @Override // o5.InterfaceC1472d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSuccess(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 0
            m5.b r1 = r6.f18729a
            android.os.PowerManager$WakeLock r2 = r1.f18734m
            if (r2 == 0) goto L10
            boolean r3 = r2.isHeld()     // Catch: java.lang.Exception -> L10
            if (r3 == 0) goto L10
            r2.release()     // Catch: java.lang.Exception -> L10
        L10:
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r0] = r7
            java.lang.String r3 = "ConfigSyncJob"
            java.lang.String r4 = "Seed-mode config received: %s"
            s5.AbstractC1643b.i(r3, r4, r2)
            if (r7 != 0) goto L1f
            goto L48
        L1f:
            java.lang.String r2 = r7.trim()
            java.lang.String r4 = "config:"
            boolean r4 = r2.startsWith(r4)
            if (r4 != 0) goto L2c
            goto L48
        L2c:
            java.lang.String r4 = r2.toLowerCase()
            java.lang.String r5 = "<html"
            boolean r5 = r4.contains(r5)
            if (r5 != 0) goto L48
            java.lang.String r5 = "404 not found"
            boolean r4 = r4.contains(r5)
            if (r4 == 0) goto L41
            goto L48
        L41:
            java.lang.String r4 = "^config:[^,<>\"]+,\\d{1,5}.*$"
            boolean r2 = r2.matches(r4)
            goto L49
        L48:
            r2 = r0
        L49:
            if (r2 != 0) goto L58
            java.lang.Object[] r7 = new java.lang.Object[r0]
            java.lang.String r0 = "Seed-mode: invalid config response, skipping write/reload"
            s5.AbstractC1643b.e(r3, r0, r7)
            java.lang.String r7 = "invalid config"
            m5.RunnableC1345b.a(r1, r7)
            return
        L58:
            r1.f18735n = r0
            q5.a r2 = r1.f18731e
            java.io.File r7 = r2.writeToFile(r7)
            r5.a r2 = r1.f18732f
            if (r2 == 0) goto L6f
            java.lang.Object[] r7 = new java.lang.Object[r0]
            java.lang.String r0 = "Seed-mode: proxy running, reloading config"
            s5.AbstractC1643b.d(r3, r0, r7)
            io.hopmonsdk.HopmnSrv.reload()
            return
        L6f:
            r5.a r0 = new r5.a
            r0.<init>()
            r1.f18732f = r0
            java.util.concurrent.Executor r1 = android.os.AsyncTask.THREAD_POOL_EXECUTOR
            java.lang.String r7 = r7.getAbsolutePath()
            java.lang.String[] r7 = new java.lang.String[]{r7}
            r0.executeOnExecutor(r1, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m5.C1344a.onSuccess(java.lang.String):void");
    }
}
