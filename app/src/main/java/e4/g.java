package e4;

import M.F;
import android.R;
import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import d4.C0810d;
import i4.AbstractC1010a;
import i4.AbstractC1011b;
import java.util.ArrayList;
import m1.AbstractC1294m0;

/* loaded from: classes2.dex */
public final class g implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    public final int f13945b;

    /* renamed from: e, reason: collision with root package name */
    public final int f13946e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13947f;

    /* renamed from: j, reason: collision with root package name */
    public final long f13948j;

    /* renamed from: m, reason: collision with root package name */
    public final RecyclerView f13949m;

    /* renamed from: n, reason: collision with root package name */
    public final e f13950n;

    /* renamed from: p, reason: collision with root package name */
    public int f13951p = 1;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f13952q = new ArrayList();

    /* renamed from: r, reason: collision with root package name */
    public int f13953r = 0;

    /* renamed from: s, reason: collision with root package name */
    public float f13954s;

    /* renamed from: t, reason: collision with root package name */
    public float f13955t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f13956u;

    /* renamed from: v, reason: collision with root package name */
    public VelocityTracker f13957v;

    /* renamed from: w, reason: collision with root package name */
    public int f13958w;

    /* renamed from: x, reason: collision with root package name */
    public View f13959x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f13960y;

    public g(RecyclerView recyclerView, e eVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(recyclerView.getContext());
        this.f13945b = viewConfiguration.getScaledTouchSlop();
        this.f13946e = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f13947f = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f13948j = recyclerView.getContext().getResources().getInteger(R.integer.config_shortAnimTime);
        this.f13949m = recyclerView;
        this.f13950n = eVar;
    }

    public AbstractC1294m0 makeScrollListener() {
        return new C0854a(this);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"AndroidLintClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z6;
        boolean z7;
        int i2;
        int i7 = this.f13951p;
        RecyclerView recyclerView = this.f13949m;
        if (i7 < 2) {
            this.f13951p = recyclerView.getWidth();
        }
        int actionMasked = F.getActionMasked(motionEvent);
        if (actionMasked != 0) {
            long j7 = this.f13948j;
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    VelocityTracker velocityTracker = this.f13957v;
                    if (velocityTracker != null && !this.f13960y) {
                        velocityTracker.addMovement(motionEvent);
                        float rawX = motionEvent.getRawX() - this.f13954s;
                        float rawY = motionEvent.getRawY() - this.f13955t;
                        float abs = Math.abs(rawX);
                        int i8 = this.f13945b;
                        if (abs > i8 && Math.abs(rawY) < Math.abs(rawX) / 2.0f) {
                            this.f13956u = true;
                            if (rawX <= 0.0f) {
                                i8 = -i8;
                            }
                            recyclerView.requestDisallowInterceptTouchEvent(true);
                            MotionEvent obtain = MotionEvent.obtain(motionEvent);
                            obtain.setAction((F.getActionIndex(motionEvent) << 8) | 3);
                            recyclerView.onTouchEvent(obtain);
                            obtain.recycle();
                            if (this.f13956u) {
                                AbstractC1010a.setTranslationX(this.f13959x, rawX - i8);
                                AbstractC1010a.setAlpha(this.f13959x, Math.max(0.0f, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.f13951p))));
                            }
                        }
                        if (this.f13956u) {
                            return true;
                        }
                    }
                } else if (actionMasked == 3 && this.f13957v != null) {
                    View view2 = this.f13959x;
                    if (view2 != null && this.f13956u) {
                        AbstractC1011b.animate(view2).translationX(0.0f).alpha(1.0f).setDuration(j7).setListener(null);
                    }
                    this.f13957v.recycle();
                    this.f13957v = null;
                    this.f13954s = 0.0f;
                    this.f13955t = 0.0f;
                    this.f13959x = null;
                    this.f13958w = -1;
                    this.f13956u = false;
                    return false;
                }
            } else if (this.f13957v != null) {
                float rawX2 = motionEvent.getRawX() - this.f13954s;
                this.f13957v.addMovement(motionEvent);
                this.f13957v.computeCurrentVelocity(1000);
                float xVelocity = this.f13957v.getXVelocity();
                float abs2 = Math.abs(xVelocity);
                float abs3 = Math.abs(this.f13957v.getYVelocity());
                if (Math.abs(rawX2) > this.f13951p / 2 && this.f13956u) {
                    z7 = rawX2 > 0.0f;
                    z6 = true;
                } else if (this.f13946e > abs2 || abs2 > this.f13947f || abs3 >= abs2 || !this.f13956u) {
                    z6 = false;
                    z7 = false;
                } else {
                    z6 = ((xVelocity > 0.0f ? 1 : (xVelocity == 0.0f ? 0 : -1)) < 0) == ((rawX2 > 0.0f ? 1 : (rawX2 == 0.0f ? 0 : -1)) < 0);
                    z7 = this.f13957v.getXVelocity() > 0.0f;
                }
                if (!z6 || (i2 = this.f13958w) == -1) {
                    AbstractC1011b.animate(this.f13959x).translationX(0.0f).alpha(1.0f).setDuration(j7).setListener(null);
                } else {
                    View view3 = this.f13959x;
                    this.f13953r++;
                    AbstractC1011b.animate(view3).translationX(z7 ? this.f13951p : -this.f13951p).alpha(0.0f).setDuration(j7).setListener(new C0855b(this, i2, view3));
                }
                this.f13957v.recycle();
                this.f13957v = null;
                this.f13954s = 0.0f;
                this.f13955t = 0.0f;
                this.f13959x = null;
                this.f13958w = -1;
                this.f13956u = false;
                return false;
            }
        } else if (!this.f13960y) {
            Rect rect = new Rect();
            int childCount = recyclerView.getChildCount();
            int[] iArr = new int[2];
            recyclerView.getLocationOnScreen(iArr);
            int rawX3 = ((int) motionEvent.getRawX()) - iArr[0];
            int rawY2 = ((int) motionEvent.getRawY()) - iArr[1];
            int i9 = 0;
            while (true) {
                if (i9 >= childCount) {
                    break;
                }
                View childAt = recyclerView.getChildAt(i9);
                childAt.getHitRect(rect);
                if (rect.contains(rawX3, rawY2)) {
                    this.f13959x = childAt;
                    break;
                }
                i9++;
            }
            if (this.f13959x != null) {
                this.f13954s = motionEvent.getRawX();
                this.f13955t = motionEvent.getRawY();
                int childAdapterPosition = recyclerView.getChildAdapterPosition(this.f13959x);
                this.f13958w = childAdapterPosition;
                if (((C0810d) this.f13950n).canDismiss(childAdapterPosition)) {
                    VelocityTracker obtain2 = VelocityTracker.obtain();
                    this.f13957v = obtain2;
                    obtain2.addMovement(motionEvent);
                    return false;
                }
                this.f13959x = null;
            }
        }
        return false;
    }

    public void setEnabled(boolean z6) {
        this.f13960y = !z6;
    }
}
