package h5;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import flix.com.vision.utils.ArcNavigationView;

/* renamed from: h5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0987a extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArcNavigationView f16612a;

    public C0987a(ArcNavigationView arcNavigationView) {
        this.f16612a = arcNavigationView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        ArcNavigationView arcNavigationView = this.f16612a;
        if (arcNavigationView.f16309M.isConvex()) {
            outline.setConvexPath(arcNavigationView.f16309M);
        }
    }
}
