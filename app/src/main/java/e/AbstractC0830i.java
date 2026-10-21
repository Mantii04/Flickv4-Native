package e;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;

/* renamed from: e.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0830i implements c0.e {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0825d f13766a;

    /* renamed from: b, reason: collision with root package name */
    public final DrawerLayout f13767b;

    /* renamed from: c, reason: collision with root package name */
    public final g.n f13768c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13769d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13770e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13771f = false;

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC0830i(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i2, int i7) {
        if (toolbar != null) {
            this.f13766a = new C0829h(toolbar);
            toolbar.setNavigationOnClickListener(new ViewOnClickListenerC0824c(this));
        } else if (activity instanceof InterfaceC0826e) {
            this.f13766a = ((InterfaceC0826e) activity).getDrawerToggleDelegate();
        } else {
            this.f13766a = new C0828g(activity);
        }
        this.f13767b = drawerLayout;
        this.f13769d = i2;
        this.f13770e = i7;
        this.f13768c = new g.n(this.f13766a.getActionBarThemedContext());
        this.f13766a.getThemeUpIndicator();
    }

    public final void a(float f3) {
        g.n nVar = this.f13768c;
        if (f3 == 1.0f) {
            nVar.setVerticalMirror(true);
        } else if (f3 == 0.0f) {
            nVar.setVerticalMirror(false);
        }
        nVar.setProgress(f3);
    }

    @Override // c0.e
    public void onDrawerClosed(View view) {
        a(0.0f);
        this.f13766a.setActionBarDescription(this.f13769d);
    }

    @Override // c0.e
    public void onDrawerOpened(View view) {
        a(1.0f);
        this.f13766a.setActionBarDescription(this.f13770e);
    }

    @Override // c0.e
    public void onDrawerSlide(View view, float f3) {
        a(Math.min(1.0f, Math.max(0.0f, f3)));
    }

    public void syncState() {
        DrawerLayout drawerLayout = this.f13767b;
        if (drawerLayout.isDrawerOpen(8388611)) {
            a(1.0f);
        } else {
            a(0.0f);
        }
        int i2 = drawerLayout.isDrawerOpen(8388611) ? this.f13770e : this.f13769d;
        boolean z6 = this.f13771f;
        InterfaceC0825d interfaceC0825d = this.f13766a;
        if (!z6 && !interfaceC0825d.isNavigationVisible()) {
            Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.f13771f = true;
        }
        interfaceC0825d.setActionBarUpIndicator(this.f13768c, i2);
    }

    @Override // c0.e
    public void onDrawerStateChanged(int i2) {
    }
}
