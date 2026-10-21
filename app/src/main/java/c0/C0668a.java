package c0;

import N.A;
import N.s;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* renamed from: c0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0668a implements A {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DrawerLayout f8526b;

    public C0668a(DrawerLayout drawerLayout) {
        this.f8526b = drawerLayout;
    }

    @Override // N.A
    public boolean perform(View view, s sVar) {
        DrawerLayout drawerLayout = this.f8526b;
        if (!drawerLayout.isDrawerOpen(view) || drawerLayout.getDrawerLockMode(view) == 2) {
            return false;
        }
        drawerLayout.closeDrawer(view);
        return true;
    }
}
