package v1;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: v1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1753l extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwipeRefreshLayout f20621b;

    public C1753l(SwipeRefreshLayout swipeRefreshLayout) {
        this.f20621b = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        this.f20621b.d(f3);
    }
}
