package T4;

import flix.com.vision.helpers.CursorLayout;

/* loaded from: classes2.dex */
public final class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CursorLayout f3711b;

    public g(CursorLayout cursorLayout) {
        this.f3711b = cursorLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        CursorLayout cursorLayout = this.f3711b;
        cursorLayout.invalidate();
        U4.m mVar = cursorLayout.f16008b;
        if (mVar != null) {
            try {
                mVar.infoToggle(false);
            } catch (Exception unused) {
            }
        }
    }
}
