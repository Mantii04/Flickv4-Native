package androidx.mediarouter.app;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: androidx.mediarouter.app.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0615t extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7904b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7905e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ View f7906f;

    public C0615t(View view, int i2, int i7) {
        this.f7904b = i2;
        this.f7905e = i7;
        this.f7906f = view;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        int i2 = this.f7905e;
        D.k(this.f7906f, this.f7904b - ((int) ((r0 - i2) * f3)));
    }
}
