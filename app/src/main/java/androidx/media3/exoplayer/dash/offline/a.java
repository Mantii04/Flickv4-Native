package androidx.media3.exoplayer.dash.offline;

import java.util.concurrent.Executor;
import m.C1256a;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7354b;

    public /* synthetic */ a(int i2) {
        this.f7354b = i2;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f7354b) {
            case 0:
                runnable.run();
                break;
            default:
                C1256a.getInstance().executeOnDiskIO(runnable);
                break;
        }
    }
}
