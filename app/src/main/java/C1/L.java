package C1;

import B1.AbstractC0037q;
import android.annotation.SuppressLint;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class L implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f394b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ N f395e;

    public L(N n7, String str) {
        this.f395e = n7;
        this.f394b = str;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"SyntheticAccessor"})
    public void run() {
        String str = this.f394b;
        N n7 = this.f395e;
        try {
            try {
                AbstractC0037q abstractC0037q = (AbstractC0037q) n7.f423z.get();
                if (abstractC0037q == null) {
                    B1.t.get().error(N.f405B, n7.f411m.f1596c + " returned a null result. Treating it as a failure.");
                } else {
                    B1.t.get().debug(N.f405B, n7.f411m.f1596c + " returned a " + abstractC0037q + ".");
                    n7.f414q = abstractC0037q;
                }
                n7.c();
            } catch (InterruptedException e3) {
                e = e3;
                B1.t.get().error(N.f405B, str + " failed because it threw an exception/error", e);
                n7.c();
            } catch (CancellationException e7) {
                B1.t.get().info(N.f405B, str + " was cancelled", e7);
                n7.c();
            } catch (ExecutionException e8) {
                e = e8;
                B1.t.get().error(N.f405B, str + " failed because it threw an exception/error", e);
                n7.c();
            }
        } catch (Throwable th) {
            n7.c();
            throw th;
        }
    }
}
