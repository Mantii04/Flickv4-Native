package v1;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: v1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1748g extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwipeRefreshLayout f20614b;

    public C1748g(SwipeRefreshLayout swipeRefreshLayout) {
        this.f20614b = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        this.f20614b.setAnimationProgress(f3);
    }
}
