package y4;

import flix.com.vision.activities.DramaHomeActivity;

/* renamed from: y4.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1938y implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21312b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DramaHomeActivity f21313e;

    public /* synthetic */ RunnableC1938y(DramaHomeActivity dramaHomeActivity, int i2) {
        this.f21312b = i2;
        this.f21313e = dramaHomeActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21312b) {
            case 0:
                this.f21313e.f14601U = false;
                break;
            default:
                DramaHomeActivity dramaHomeActivity = this.f21313e;
                Q4.d dVar = dramaHomeActivity.f14600T;
                if (dVar != null) {
                    try {
                        dVar.dismiss();
                    } catch (Exception unused) {
                    }
                }
                dramaHomeActivity.f14603b.fullScroll(33);
                break;
        }
    }
}
