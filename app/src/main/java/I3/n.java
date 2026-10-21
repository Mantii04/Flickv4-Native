package I3;

import android.view.View;
import j3.InterfaceC1052d;

/* loaded from: classes2.dex */
public final class n implements InterfaceC1052d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f1332a;

    public n(t tVar) {
        this.f1332a = tVar;
    }

    public void onDismiss(View view) {
        if (view.getParent() != null) {
            view.setVisibility(8);
        }
        this.f1332a.dispatchDismiss(0);
    }

    public void onDragStateChanged(int i2) {
        t tVar = this.f1332a;
        if (i2 == 0) {
            A.b().restoreTimeoutIfPaused(tVar.f1374u);
        } else if (i2 == 1 || i2 == 2) {
            A.b().pauseTimeout(tVar.f1374u);
        }
    }
}
