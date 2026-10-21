package v1;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: v1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1752k extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwipeRefreshLayout f20620b;

    public C1752k(SwipeRefreshLayout swipeRefreshLayout) {
        this.f20620b = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f20620b;
        swipeRefreshLayout.getClass();
        int abs = swipeRefreshLayout.f8174G - Math.abs(swipeRefreshLayout.f8173F);
        swipeRefreshLayout.setTargetOffsetTopAndBottom((swipeRefreshLayout.f8172E + ((int) ((abs - r1) * f3))) - swipeRefreshLayout.f8170C.getTop());
        swipeRefreshLayout.f8176I.setArrowScale(1.0f - f3);
    }
}
