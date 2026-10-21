package x3;

import M.C0152b;
import android.view.View;
import com.google.android.material.internal.NavigationMenuItemView;

/* renamed from: x3.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1839m extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ NavigationMenuItemView f20907d;

    public C1839m(NavigationMenuItemView navigationMenuItemView) {
        this.f20907d = navigationMenuItemView;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        nVar.setCheckable(this.f20907d.f12690G);
    }
}
