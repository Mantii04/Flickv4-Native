package c0;

import W.l;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes.dex */
public final class k extends W.k {

    /* renamed from: a, reason: collision with root package name */
    public final int f8539a;

    /* renamed from: b, reason: collision with root package name */
    public l f8540b;

    /* renamed from: c, reason: collision with root package name */
    public final j f8541c = new j(this);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ DrawerLayout f8542d;

    public k(DrawerLayout drawerLayout, int i2) {
        this.f8542d = drawerLayout;
        this.f8539a = i2;
    }

    @Override // W.k
    public int clampViewPositionHorizontal(View view, int i2, int i7) {
        DrawerLayout drawerLayout = this.f8542d;
        if (drawerLayout.a(view, 3)) {
            return Math.max(-view.getWidth(), Math.min(i2, 0));
        }
        int width = drawerLayout.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i2, width));
    }

    @Override // W.k
    public int clampViewPositionVertical(View view, int i2, int i7) {
        return view.getTop();
    }

    @Override // W.k
    public int getViewHorizontalDragRange(View view) {
        if (DrawerLayout.j(view)) {
            return view.getWidth();
        }
        return 0;
    }

    @Override // W.k
    public void onEdgeDragStarted(int i2, int i7) {
        int i8 = i2 & 1;
        DrawerLayout drawerLayout = this.f8542d;
        View c7 = i8 == 1 ? drawerLayout.c(3) : drawerLayout.c(5);
        if (c7 == null || drawerLayout.getDrawerLockMode(c7) != 0) {
            return;
        }
        this.f8540b.captureChildView(c7, i7);
    }

    @Override // W.k
    public boolean onEdgeLock(int i2) {
        return false;
    }

    @Override // W.k
    public void onEdgeTouched(int i2, int i7) {
        this.f8542d.postDelayed(this.f8541c, 160L);
    }

    @Override // W.k
    public void onViewCaptured(View view, int i2) {
        ((f) view.getLayoutParams()).f8531c = false;
        int i7 = this.f8539a == 3 ? 5 : 3;
        DrawerLayout drawerLayout = this.f8542d;
        View c7 = drawerLayout.c(i7);
        if (c7 != null) {
            drawerLayout.closeDrawer(c7);
        }
    }

    @Override // W.k
    public void onViewDragStateChanged(int i2) {
        this.f8542d.o(this.f8540b.getCapturedView(), i2);
    }

    @Override // W.k
    public void onViewPositionChanged(View view, int i2, int i7, int i8, int i9) {
        int width = view.getWidth();
        DrawerLayout drawerLayout = this.f8542d;
        float width2 = (drawerLayout.a(view, 3) ? i2 + width : drawerLayout.getWidth() - i2) / width;
        drawerLayout.l(view, width2);
        view.setVisibility(width2 == 0.0f ? 4 : 0);
        drawerLayout.invalidate();
    }

    @Override // W.k
    public void onViewReleased(View view, float f3, float f7) {
        int i2;
        DrawerLayout drawerLayout = this.f8542d;
        int[] iArr = DrawerLayout.f5935M;
        float f8 = ((f) view.getLayoutParams()).f8530b;
        int width = view.getWidth();
        if (drawerLayout.a(view, 3)) {
            i2 = (f3 > 0.0f || (f3 == 0.0f && f8 > 0.5f)) ? 0 : -width;
        } else {
            int width2 = drawerLayout.getWidth();
            if (f3 < 0.0f || (f3 == 0.0f && f8 > 0.5f)) {
                width2 -= width;
            }
            i2 = width2;
        }
        this.f8540b.settleCapturedViewAt(i2, view.getTop());
        drawerLayout.invalidate();
    }

    public void removeCallbacks() {
        this.f8542d.removeCallbacks(this.f8541c);
    }

    public void setDragger(l lVar) {
        this.f8540b = lVar;
    }

    @Override // W.k
    public boolean tryCaptureView(View view, int i2) {
        DrawerLayout drawerLayout = this.f8542d;
        return DrawerLayout.j(view) && drawerLayout.a(view, this.f8539a) && drawerLayout.getDrawerLockMode(view) == 0;
    }
}
