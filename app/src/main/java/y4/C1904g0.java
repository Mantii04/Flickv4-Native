package y4;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import e.AbstractC0830i;
import flix.com.vision.activities.MainActivity;

/* renamed from: y4.g0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1904g0 extends AbstractC0830i {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21230g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1904g0(MainActivity mainActivity, MainActivity mainActivity2, DrawerLayout drawerLayout, Toolbar toolbar, int i2, int i7) {
        super(mainActivity2, drawerLayout, toolbar, i2, i7);
        this.f21230g = mainActivity;
    }

    @Override // e.AbstractC0830i, c0.e
    public void onDrawerClosed(View view) {
        super.onDrawerClosed(view);
        try {
            this.f21230g.f14750C.requestFocus();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // e.AbstractC0830i, c0.e
    public void onDrawerOpened(View view) {
        super.onDrawerOpened(view);
        try {
            this.f21230g.f14780w.requestFocus();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
