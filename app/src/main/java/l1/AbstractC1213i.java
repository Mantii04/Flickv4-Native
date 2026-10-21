package l1;

import android.view.Choreographer;

/* renamed from: l1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1213i {
    public static void postFrameCallback(final Runnable runnable) {
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: l1.h
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j7) {
                runnable.run();
            }
        });
    }
}
