package com.google.android.material.behavior;

import M.AbstractC0181p0;
import N.h;
import W.l;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import j3.C1050b;
import j3.C1051c;
import j3.InterfaceC1052d;
import y.AbstractC1859c;

/* loaded from: classes2.dex */
public class SwipeDismissBehavior<V extends View> extends AbstractC1859c {

    /* renamed from: b, reason: collision with root package name */
    public l f12447b;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC1052d f12448e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12449f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f12450j;

    /* renamed from: m, reason: collision with root package name */
    public int f12451m = 2;

    /* renamed from: n, reason: collision with root package name */
    public final float f12452n = 0.5f;

    /* renamed from: p, reason: collision with root package name */
    public float f12453p = 0.0f;

    /* renamed from: q, reason: collision with root package name */
    public float f12454q = 0.5f;

    /* renamed from: r, reason: collision with root package name */
    public final C1050b f12455r = new C1050b(this);

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    @Override // y.AbstractC1859c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v6, MotionEvent motionEvent) {
        boolean z6 = this.f12449f;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z6 = coordinatorLayout.isPointInChildBounds(v6, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f12449f = z6;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f12449f = false;
        }
        if (z6) {
            if (this.f12447b == null) {
                this.f12447b = l.create(coordinatorLayout, this.f12455r);
            }
            if (!this.f12450j && this.f12447b.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // y.AbstractC1859c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v6, int i2) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, v6, i2);
        if (AbstractC0181p0.getImportantForAccessibility(v6) == 0) {
            AbstractC0181p0.setImportantForAccessibility(v6, 1);
            AbstractC0181p0.removeAccessibilityAction(v6, ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
            if (canSwipeDismissView(v6)) {
                AbstractC0181p0.replaceAccessibilityAction(v6, h.f2128l, null, new C1051c(this));
            }
        }
        return onLayoutChild;
    }

    @Override // y.AbstractC1859c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v6, MotionEvent motionEvent) {
        if (this.f12447b == null) {
            return false;
        }
        if (this.f12450j && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f12447b.processTouchEvent(motionEvent);
        return true;
    }

    public void setEndAlphaSwipeDistance(float f3) {
        this.f12454q = Math.min(Math.max(0.0f, f3), 1.0f);
    }

    public void setListener(InterfaceC1052d interfaceC1052d) {
        this.f12448e = interfaceC1052d;
    }

    public void setStartAlphaSwipeDistance(float f3) {
        this.f12453p = Math.min(Math.max(0.0f, f3), 1.0f);
    }

    public void setSwipeDirection(int i2) {
        this.f12451m = i2;
    }
}
