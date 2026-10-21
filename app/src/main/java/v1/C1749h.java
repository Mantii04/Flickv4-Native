package v1;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: v1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1749h extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwipeRefreshLayout f20615b;

    public C1749h(SwipeRefreshLayout swipeRefreshLayout) {
        this.f20615b = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        this.f20615b.setAnimationProgress(1.0f - f3);
    }
}
