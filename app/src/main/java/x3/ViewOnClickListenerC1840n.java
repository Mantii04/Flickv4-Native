package x3;

import android.view.View;
import com.google.android.material.internal.NavigationMenuItemView;

/* renamed from: x3.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnClickListenerC1840n implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1826A f20908b;

    public ViewOnClickListenerC1840n(C1826A c1826a) {
        this.f20908b = c1826a;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1826A c1826a = this.f20908b;
        boolean z6 = true;
        c1826a.setUpdateSuspended(true);
        k.s itemData = ((NavigationMenuItemView) view).getItemData();
        boolean performItemAction = c1826a.f20856f.performItemAction(itemData, c1826a, 0);
        if (itemData != null && itemData.isCheckable() && performItemAction) {
            c1826a.f20858m.setCheckedItem(itemData);
        } else {
            z6 = false;
        }
        c1826a.setUpdateSuspended(false);
        if (z6) {
            c1826a.updateMenuView(false);
        }
    }
}
