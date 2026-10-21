package androidx.mediarouter.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* loaded from: classes.dex */
public final class a0 extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7763b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7764e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ View f7765f;

    public a0(View view, int i2, int i7) {
        this.f7763b = i2;
        this.f7764e = i7;
        this.f7765f = view;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        int i2 = this.f7763b;
        int i7 = this.f7764e + ((int) ((i2 - r0) * f3));
        int i8 = m0.f7842c0;
        View view = this.f7765f;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i7;
        view.setLayoutParams(layoutParams);
    }
}
