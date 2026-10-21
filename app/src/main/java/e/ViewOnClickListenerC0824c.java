package e;

import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* renamed from: e.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0824c implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0830i f13743b;

    public ViewOnClickListenerC0824c(AbstractC0830i abstractC0830i) {
        this.f13743b = abstractC0830i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DrawerLayout drawerLayout = this.f13743b.f13767b;
        int drawerLockMode = drawerLayout.getDrawerLockMode(8388611);
        if (drawerLayout.isDrawerVisible(8388611) && drawerLockMode != 2) {
            drawerLayout.closeDrawer(8388611);
        } else if (drawerLockMode != 1) {
            drawerLayout.openDrawer(8388611);
        }
    }
}
