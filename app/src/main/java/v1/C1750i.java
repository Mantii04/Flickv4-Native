package v1;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: v1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1750i extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20616b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f20617e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SwipeRefreshLayout f20618f;

    public C1750i(SwipeRefreshLayout swipeRefreshLayout, int i2, int i7) {
        this.f20618f = swipeRefreshLayout;
        this.f20616b = i2;
        this.f20617e = i7;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        this.f20618f.f8176I.setAlpha((int) (((this.f20617e - r0) * f3) + this.f20616b));
    }
}
