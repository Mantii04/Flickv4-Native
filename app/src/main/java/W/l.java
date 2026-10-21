package W;

import M.AbstractC0181p0;
import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.OverScroller;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: x, reason: collision with root package name */
    public static final i f4051x = new i();

    /* renamed from: a, reason: collision with root package name */
    public int f4052a;

    /* renamed from: b, reason: collision with root package name */
    public int f4053b;

    /* renamed from: d, reason: collision with root package name */
    public float[] f4055d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f4056e;

    /* renamed from: f, reason: collision with root package name */
    public float[] f4057f;

    /* renamed from: g, reason: collision with root package name */
    public float[] f4058g;

    /* renamed from: h, reason: collision with root package name */
    public int[] f4059h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f4060i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f4061j;

    /* renamed from: k, reason: collision with root package name */
    public int f4062k;

    /* renamed from: l, reason: collision with root package name */
    public VelocityTracker f4063l;

    /* renamed from: m, reason: collision with root package name */
    public final float f4064m;

    /* renamed from: n, reason: collision with root package name */
    public float f4065n;

    /* renamed from: o, reason: collision with root package name */
    public int f4066o;

    /* renamed from: p, reason: collision with root package name */
    public final int f4067p;

    /* renamed from: q, reason: collision with root package name */
    public int f4068q;

    /* renamed from: r, reason: collision with root package name */
    public final OverScroller f4069r;

    /* renamed from: s, reason: collision with root package name */
    public final k f4070s;

    /* renamed from: t, reason: collision with root package name */
    public View f4071t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4072u;

    /* renamed from: v, reason: collision with root package name */
    public final ViewGroup f4073v;

    /* renamed from: c, reason: collision with root package name */
    public int f4054c = -1;

    /* renamed from: w, reason: collision with root package name */
    public final j f4074w = new j(this);

    public l(Context context, ViewGroup viewGroup, k kVar) {
        if (kVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f4073v = viewGroup;
        this.f4070s = kVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int i2 = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f4067p = i2;
        this.f4066o = i2;
        this.f4053b = viewConfiguration.getScaledTouchSlop();
        this.f4064m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f4065n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f4069r = new OverScroller(context, f4051x);
    }

    public static l create(ViewGroup viewGroup, k kVar) {
        return new l(viewGroup.getContext(), viewGroup, kVar);
    }

    public final boolean a(float f3, float f7, int i2, int i7) {
        float abs = Math.abs(f3);
        float abs2 = Math.abs(f7);
        if ((this.f4059h[i2] & i7) == i7 && (this.f4068q & i7) != 0 && (this.f4061j[i2] & i7) != i7 && (this.f4060i[i2] & i7) != i7) {
            float f8 = this.f4053b;
            if (abs > f8 || abs2 > f8) {
                if (abs < abs2 * 0.5f && this.f4070s.onEdgeLock(i7)) {
                    int[] iArr = this.f4061j;
                    iArr[i2] = iArr[i2] | i7;
                    return false;
                }
                if ((this.f4060i[i2] & i7) == 0 && abs > this.f4053b) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean b(View view, float f3, float f7) {
        if (view == null) {
            return false;
        }
        k kVar = this.f4070s;
        boolean z6 = kVar.getViewHorizontalDragRange(view) > 0;
        boolean z7 = kVar.getViewVerticalDragRange(view) > 0;
        if (!z6 || !z7) {
            return z6 ? Math.abs(f3) > ((float) this.f4053b) : z7 && Math.abs(f7) > ((float) this.f4053b);
        }
        float f8 = (f7 * f7) + (f3 * f3);
        int i2 = this.f4053b;
        return f8 > ((float) (i2 * i2));
    }

    public final void c(int i2) {
        if (this.f4055d == null || !isPointerDown(i2)) {
            return;
        }
        this.f4055d[i2] = 0.0f;
        this.f4056e[i2] = 0.0f;
        this.f4057f[i2] = 0.0f;
        this.f4058g[i2] = 0.0f;
        this.f4059h[i2] = 0;
        this.f4060i[i2] = 0;
        this.f4061j[i2] = 0;
        this.f4062k = (~(1 << i2)) & this.f4062k;
    }

    public void cancel() {
        this.f4054c = -1;
        float[] fArr = this.f4055d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f4056e, 0.0f);
            Arrays.fill(this.f4057f, 0.0f);
            Arrays.fill(this.f4058g, 0.0f);
            Arrays.fill(this.f4059h, 0);
            Arrays.fill(this.f4060i, 0);
            Arrays.fill(this.f4061j, 0);
            this.f4062k = 0;
        }
        VelocityTracker velocityTracker = this.f4063l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f4063l = null;
        }
    }

    public void captureChildView(View view, int i2) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.f4073v;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.f4071t = view;
        this.f4054c = i2;
        this.f4070s.onViewCaptured(view, i2);
        k(1);
    }

    public boolean checkTouchSlop(int i2) {
        int length = this.f4055d.length;
        for (int i7 = 0; i7 < length; i7++) {
            if (checkTouchSlop(i2, i7)) {
                return true;
            }
        }
        return false;
    }

    public boolean continueSettling(boolean z6) {
        if (this.f4052a == 2) {
            OverScroller overScroller = this.f4069r;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f4071t.getLeft();
            int top = currY - this.f4071t.getTop();
            if (left != 0) {
                AbstractC0181p0.offsetLeftAndRight(this.f4071t, left);
            }
            if (top != 0) {
                AbstractC0181p0.offsetTopAndBottom(this.f4071t, top);
            }
            if (left != 0 || top != 0) {
                this.f4070s.onViewPositionChanged(this.f4071t, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z6) {
                    this.f4073v.post(this.f4074w);
                } else {
                    k(0);
                }
            }
        }
        return this.f4052a == 2;
    }

    public final int d(int i2, int i7, int i8) {
        if (i2 == 0) {
            return 0;
        }
        float width = this.f4073v.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i2) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int abs = Math.abs(i7);
        return Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i2) / i8) + 1.0f) * 256.0f), 600);
    }

    public final boolean e(int i2, int i7, int i8, int i9) {
        float f3;
        float f7;
        float f8;
        float f9;
        int left = this.f4071t.getLeft();
        int top = this.f4071t.getTop();
        int i10 = i2 - left;
        int i11 = i7 - top;
        OverScroller overScroller = this.f4069r;
        if (i10 == 0 && i11 == 0) {
            overScroller.abortAnimation();
            k(0);
            return false;
        }
        View view = this.f4071t;
        int i12 = (int) this.f4065n;
        int i13 = (int) this.f4064m;
        int abs = Math.abs(i8);
        if (abs < i12) {
            i8 = 0;
        } else if (abs > i13) {
            i8 = i8 > 0 ? i13 : -i13;
        }
        int i14 = (int) this.f4065n;
        int abs2 = Math.abs(i9);
        if (abs2 < i14) {
            i9 = 0;
        } else if (abs2 > i13) {
            i9 = i9 > 0 ? i13 : -i13;
        }
        int abs3 = Math.abs(i10);
        int abs4 = Math.abs(i11);
        int abs5 = Math.abs(i8);
        int abs6 = Math.abs(i9);
        int i15 = abs5 + abs6;
        int i16 = abs3 + abs4;
        if (i8 != 0) {
            f3 = abs5;
            f7 = i15;
        } else {
            f3 = abs3;
            f7 = i16;
        }
        float f10 = f3 / f7;
        if (i9 != 0) {
            f8 = abs6;
            f9 = i15;
        } else {
            f8 = abs4;
            f9 = i16;
        }
        float f11 = f8 / f9;
        k kVar = this.f4070s;
        overScroller.startScroll(left, top, i10, i11, (int) ((d(i11, i9, kVar.getViewVerticalDragRange(view)) * f11) + (d(i10, i8, kVar.getViewHorizontalDragRange(view)) * f10)));
        k(2);
        return true;
    }

    public final boolean f(int i2) {
        if (isPointerDown(i2)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public View findTopChildUnder(int i2, int i7) {
        ViewGroup viewGroup = this.f4073v;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(this.f4070s.getOrderedChildIndex(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i7 >= childAt.getTop() && i7 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final void g() {
        VelocityTracker velocityTracker = this.f4063l;
        float f3 = this.f4064m;
        velocityTracker.computeCurrentVelocity(1000, f3);
        float xVelocity = this.f4063l.getXVelocity(this.f4054c);
        float f7 = this.f4065n;
        float abs = Math.abs(xVelocity);
        if (abs < f7) {
            xVelocity = 0.0f;
        } else if (abs > f3) {
            xVelocity = xVelocity > 0.0f ? f3 : -f3;
        }
        float yVelocity = this.f4063l.getYVelocity(this.f4054c);
        float f8 = this.f4065n;
        float abs2 = Math.abs(yVelocity);
        if (abs2 < f8) {
            f3 = 0.0f;
        } else if (abs2 <= f3) {
            f3 = yVelocity;
        } else if (yVelocity <= 0.0f) {
            f3 = -f3;
        }
        this.f4072u = true;
        this.f4070s.onViewReleased(this.f4071t, xVelocity, f3);
        this.f4072u = false;
        if (this.f4052a == 1) {
            k(0);
        }
    }

    public View getCapturedView() {
        return this.f4071t;
    }

    public int getDefaultEdgeSize() {
        return this.f4067p;
    }

    public int getEdgeSize() {
        return this.f4066o;
    }

    public int getTouchSlop() {
        return this.f4053b;
    }

    public int getViewDragState() {
        return this.f4052a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v3, types: [W.k] */
    public final void h(float f3, float f7, int i2) {
        boolean a7 = a(f3, f7, i2, 1);
        boolean z6 = a7;
        if (a(f7, f3, i2, 4)) {
            z6 = (a7 ? 1 : 0) | 4;
        }
        boolean z7 = z6;
        if (a(f3, f7, i2, 2)) {
            z7 = (z6 ? 1 : 0) | 2;
        }
        ?? r02 = z7;
        if (a(f7, f3, i2, 8)) {
            r02 = (z7 ? 1 : 0) | 8;
        }
        if (r02 != 0) {
            int[] iArr = this.f4060i;
            iArr[i2] = iArr[i2] | r02;
            this.f4070s.onEdgeDragStarted(r02, i2);
        }
    }

    public final void i(float f3, float f7, int i2) {
        float[] fArr = this.f4055d;
        if (fArr == null || fArr.length <= i2) {
            int i7 = i2 + 1;
            float[] fArr2 = new float[i7];
            float[] fArr3 = new float[i7];
            float[] fArr4 = new float[i7];
            float[] fArr5 = new float[i7];
            int[] iArr = new int[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f4056e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f4057f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f4058g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f4059h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f4060i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f4061j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f4055d = fArr2;
            this.f4056e = fArr3;
            this.f4057f = fArr4;
            this.f4058g = fArr5;
            this.f4059h = iArr;
            this.f4060i = iArr2;
            this.f4061j = iArr3;
        }
        float[] fArr9 = this.f4055d;
        this.f4057f[i2] = f3;
        fArr9[i2] = f3;
        float[] fArr10 = this.f4056e;
        this.f4058g[i2] = f7;
        fArr10[i2] = f7;
        int[] iArr7 = this.f4059h;
        int i8 = (int) f3;
        int i9 = (int) f7;
        ViewGroup viewGroup = this.f4073v;
        int i10 = i8 < viewGroup.getLeft() + this.f4066o ? 1 : 0;
        if (i9 < viewGroup.getTop() + this.f4066o) {
            i10 |= 4;
        }
        if (i8 > viewGroup.getRight() - this.f4066o) {
            i10 |= 2;
        }
        if (i9 > viewGroup.getBottom() - this.f4066o) {
            i10 |= 8;
        }
        iArr7[i2] = i10;
        this.f4062k |= 1 << i2;
    }

    public boolean isCapturedViewUnder(int i2, int i7) {
        return isViewUnder(this.f4071t, i2, i7);
    }

    public boolean isPointerDown(int i2) {
        return ((1 << i2) & this.f4062k) != 0;
    }

    public boolean isViewUnder(View view, int i2, int i7) {
        return view != null && i2 >= view.getLeft() && i2 < view.getRight() && i7 >= view.getTop() && i7 < view.getBottom();
    }

    public final void j(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (f(pointerId)) {
                float x6 = motionEvent.getX(i2);
                float y6 = motionEvent.getY(i2);
                this.f4057f[pointerId] = x6;
                this.f4058g[pointerId] = y6;
            }
        }
    }

    public final void k(int i2) {
        this.f4073v.removeCallbacks(this.f4074w);
        if (this.f4052a != i2) {
            this.f4052a = i2;
            this.f4070s.onViewDragStateChanged(i2);
            if (this.f4052a == 0) {
                this.f4071t = null;
            }
        }
    }

    public final boolean l(View view, int i2) {
        if (view == this.f4071t && this.f4054c == i2) {
            return true;
        }
        if (view == null || !this.f4070s.tryCaptureView(view, i2)) {
            return false;
        }
        this.f4054c = i2;
        captureChildView(view, i2);
        return true;
    }

    public void processTouchEvent(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.f4063l == null) {
            this.f4063l = VelocityTracker.obtain();
        }
        this.f4063l.addMovement(motionEvent);
        int i7 = 0;
        k kVar = this.f4070s;
        if (actionMasked == 0) {
            float x6 = motionEvent.getX();
            float y6 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View findTopChildUnder = findTopChildUnder((int) x6, (int) y6);
            i(x6, y6, pointerId);
            l(findTopChildUnder, pointerId);
            int i8 = this.f4059h[pointerId] & this.f4068q;
            if (i8 != 0) {
                kVar.onEdgeTouched(i8, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f4052a == 1) {
                g();
            }
            cancel();
            return;
        }
        if (actionMasked == 2) {
            if (this.f4052a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                while (i7 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i7);
                    if (f(pointerId2)) {
                        float x7 = motionEvent.getX(i7);
                        float y7 = motionEvent.getY(i7);
                        float f3 = x7 - this.f4055d[pointerId2];
                        float f7 = y7 - this.f4056e[pointerId2];
                        h(f3, f7, pointerId2);
                        if (this.f4052a != 1) {
                            View findTopChildUnder2 = findTopChildUnder((int) x7, (int) y7);
                            if (b(findTopChildUnder2, f3, f7) && l(findTopChildUnder2, pointerId2)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i7++;
                }
                j(motionEvent);
                return;
            }
            if (f(this.f4054c)) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f4054c);
                float x8 = motionEvent.getX(findPointerIndex);
                float y8 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.f4057f;
                int i9 = this.f4054c;
                int i10 = (int) (x8 - fArr[i9]);
                int i11 = (int) (y8 - this.f4058g[i9]);
                int left = this.f4071t.getLeft() + i10;
                int top = this.f4071t.getTop() + i11;
                int left2 = this.f4071t.getLeft();
                int top2 = this.f4071t.getTop();
                if (i10 != 0) {
                    left = kVar.clampViewPositionHorizontal(this.f4071t, left, i10);
                    AbstractC0181p0.offsetLeftAndRight(this.f4071t, left - left2);
                }
                int i12 = left;
                if (i11 != 0) {
                    top = kVar.clampViewPositionVertical(this.f4071t, top, i11);
                    AbstractC0181p0.offsetTopAndBottom(this.f4071t, top - top2);
                }
                int i13 = top;
                if (i10 != 0 || i11 != 0) {
                    this.f4070s.onViewPositionChanged(this.f4071t, i12, i13, i12 - left2, i13 - top2);
                }
                j(motionEvent);
                return;
            }
            return;
        }
        if (actionMasked == 3) {
            if (this.f4052a == 1) {
                this.f4072u = true;
                kVar.onViewReleased(this.f4071t, 0.0f, 0.0f);
                this.f4072u = false;
                if (this.f4052a == 1) {
                    k(0);
                }
            }
            cancel();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x9 = motionEvent.getX(actionIndex);
            float y9 = motionEvent.getY(actionIndex);
            i(x9, y9, pointerId3);
            if (this.f4052a != 0) {
                if (isCapturedViewUnder((int) x9, (int) y9)) {
                    l(this.f4071t, pointerId3);
                    return;
                }
                return;
            } else {
                l(findTopChildUnder((int) x9, (int) y9), pointerId3);
                int i14 = this.f4059h[pointerId3] & this.f4068q;
                if (i14 != 0) {
                    kVar.onEdgeTouched(i14, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f4052a == 1 && pointerId4 == this.f4054c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i7 >= pointerCount2) {
                    i2 = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i7);
                if (pointerId5 != this.f4054c) {
                    View findTopChildUnder3 = findTopChildUnder((int) motionEvent.getX(i7), (int) motionEvent.getY(i7));
                    View view = this.f4071t;
                    if (findTopChildUnder3 == view && l(view, pointerId5)) {
                        i2 = this.f4054c;
                        break;
                    }
                }
                i7++;
            }
            if (i2 == -1) {
                g();
            }
        }
        c(pointerId4);
    }

    public void setEdgeSize(int i2) {
        this.f4066o = i2;
    }

    public void setEdgeTrackingEnabled(int i2) {
        this.f4068q = i2;
    }

    public void setMinVelocity(float f3) {
        this.f4065n = f3;
    }

    public boolean settleCapturedViewAt(int i2, int i7) {
        if (this.f4072u) {
            return e(i2, i7, (int) this.f4063l.getXVelocity(this.f4054c), (int) this.f4063l.getYVelocity(this.f4054c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d5, code lost:
    
        if (r13 != r12) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: W.l.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean smoothSlideViewTo(View view, int i2, int i7) {
        this.f4071t = view;
        this.f4054c = -1;
        boolean e3 = e(i2, i7, 0, 0);
        if (!e3 && this.f4052a == 0 && this.f4071t != null) {
            this.f4071t = null;
        }
        return e3;
    }

    public static l create(ViewGroup viewGroup, float f3, k kVar) {
        l create = create(viewGroup, kVar);
        create.f4053b = (int) ((1.0f / f3) * create.f4053b);
        return create;
    }

    public boolean checkTouchSlop(int i2, int i7) {
        if (!isPointerDown(i7)) {
            return false;
        }
        boolean z6 = (i2 & 1) == 1;
        boolean z7 = (i2 & 2) == 2;
        float f3 = this.f4057f[i7] - this.f4055d[i7];
        float f7 = this.f4058g[i7] - this.f4056e[i7];
        if (!z6 || !z7) {
            return z6 ? Math.abs(f3) > ((float) this.f4053b) : z7 && Math.abs(f7) > ((float) this.f4053b);
        }
        float f8 = (f7 * f7) + (f3 * f3);
        int i8 = this.f4053b;
        return f8 > ((float) (i8 * i8));
    }
}
