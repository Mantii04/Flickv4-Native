package androidx.activity;

import android.window.BackEvent;

/* renamed from: androidx.activity.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0403a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0403a f4860a = new C0403a();

    public final BackEvent createOnBackEvent(float f3, float f7, float f8, int i2) {
        return new BackEvent(f3, f7, f8, i2);
    }

    public final float progress(BackEvent backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    public final int swipeEdge(BackEvent backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }

    public final float touchX(BackEvent backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    public final float touchY(BackEvent backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getTouchY();
    }
}
