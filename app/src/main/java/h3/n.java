package h3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.media3.common.util.Log;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class n extends p {

    /* renamed from: f, reason: collision with root package name */
    public m f16541f;

    /* renamed from: j, reason: collision with root package name */
    public OverScroller f16542j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f16543m;

    /* renamed from: n, reason: collision with root package name */
    public int f16544n;

    /* renamed from: p, reason: collision with root package name */
    public int f16545p;

    /* renamed from: q, reason: collision with root package name */
    public int f16546q;

    /* renamed from: r, reason: collision with root package name */
    public VelocityTracker f16547r;

    public n() {
        this.f16544n = -1;
        this.f16546q = -1;
    }

    public abstract int a();

    public abstract int b(CoordinatorLayout coordinatorLayout, View view, int i2, int i7, int i8);

    public final void c(CoordinatorLayout coordinatorLayout, View view, int i2) {
        b(coordinatorLayout, view, i2, Integer.MIN_VALUE, Log.LOG_LEVEL_OFF);
    }

    @Override // y.AbstractC1859c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        View view2;
        int findPointerIndex;
        if (this.f16546q < 0) {
            this.f16546q = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f16543m) {
            int i2 = this.f16544n;
            if (i2 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i2)) == -1) {
                return false;
            }
            int y6 = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y6 - this.f16545p) > this.f16546q) {
                this.f16545p = y6;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f16544n = -1;
            int x6 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            WeakReference weakReference = ((AppBarLayout.BaseBehavior) this).f12385w;
            boolean z6 = (weakReference == null || !((view2 = (View) weakReference.get()) == null || !view2.isShown() || view2.canScrollVertically(-1))) && coordinatorLayout.isPointInChildBounds(view, x6, y7);
            this.f16543m = z6;
            if (z6) {
                this.f16545p = y7;
                this.f16544n = motionEvent.getPointerId(0);
                if (this.f16547r == null) {
                    this.f16547r = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f16542j;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f16542j.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f16547r;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00fc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ec  */
    @Override // y.AbstractC1859c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r21, android.view.View r22, android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h3.n.onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public n(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16544n = -1;
        this.f16546q = -1;
    }
}
