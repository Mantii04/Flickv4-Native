package f5;

import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.tv.TVChannelSearchActivity;

/* loaded from: classes2.dex */
public final class G implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TVChannelSearchActivity f14387a;

    public G(TVChannelSearchActivity tVChannelSearchActivity) {
        this.f14387a = tVChannelSearchActivity;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
    
        if (r3.isShowing() != false) goto L12;
     */
    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onQueryTextSubmit(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 == 0) goto L4c
            int r1 = r6.length()
            r2 = 1
            if (r1 < r2) goto L4c
            flix.com.vision.tv.TVChannelSearchActivity r1 = r5.f14387a
            android.app.ProgressDialog r3 = r1.f16291m
            if (r3 == 0) goto L17
            boolean r3 = r3.isShowing()     // Catch: java.lang.Exception -> L17
            if (r3 == 0) goto L17
            goto L2d
        L17:
            android.app.ProgressDialog r3 = new android.app.ProgressDialog
            r3.<init>(r1)
            r1.f16291m = r3
            java.lang.String r4 = "please wait..."
            r3.setMessage(r4)
            android.app.ProgressDialog r3 = r1.f16291m
            r3.setCancelable(r2)
            android.app.ProgressDialog r2 = r1.f16291m
            r2.show()
        L2d:
            e.b r2 = r1.getSupportActionBar()
            java.lang.String r3 = "searching all channels..."
            r2.setTitle(r3)
            java.util.ArrayList r2 = r1.f16290j
            r2.clear()
            C4.u r2 = r1.f16289f
            r2.notifyDataSetChanged()
            f5.H r2 = new f5.H
            r2.<init>(r1, r6)
            java.util.concurrent.Executor r6 = android.os.AsyncTask.THREAD_POOL_EXECUTOR
            java.lang.Void[] r1 = new java.lang.Void[r0]
            r2.executeOnExecutor(r6, r1)
        L4c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f5.G.onQueryTextSubmit(java.lang.String):boolean");
    }
}
