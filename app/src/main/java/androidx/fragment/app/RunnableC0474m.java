package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;

/* renamed from: androidx.fragment.app.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0474m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ E0 f6267b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f6268e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Rect f6269f;

    public RunnableC0474m(E0 e02, View view, Rect rect) {
        this.f6267b = e02;
        this.f6268e = view;
        this.f6269f = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6267b.getBoundsOnScreen(this.f6268e, this.f6269f);
    }
}
