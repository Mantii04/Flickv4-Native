package q2;

import android.util.Log;

/* loaded from: classes.dex */
public final class f implements g {
    @Override // q2.g
    public void handle(Throwable th) {
        if (th == null || !Log.isLoggable("GlideExecutor", 6)) {
            return;
        }
        Log.e("GlideExecutor", "Request threw uncaught throwable", th);
    }
}
