package m1;

import M.AbstractC0181p0;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.media3.common.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class A0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public int f18207b;

    /* renamed from: e, reason: collision with root package name */
    public int f18208e;

    /* renamed from: f, reason: collision with root package name */
    public OverScroller f18209f;

    /* renamed from: j, reason: collision with root package name */
    public Interpolator f18210j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f18211m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f18212n;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18213p;

    public A0(RecyclerView recyclerView) {
        this.f18213p = recyclerView;
        Q q6 = RecyclerView.f8006R0;
        this.f18210j = q6;
        this.f18211m = false;
        this.f18212n = false;
        this.f18209f = new OverScroller(recyclerView.getContext(), q6);
    }

    public final void a() {
        if (this.f18211m) {
            this.f18212n = true;
            return;
        }
        RecyclerView recyclerView = this.f18213p;
        recyclerView.removeCallbacks(this);
        AbstractC0181p0.postOnAnimation(recyclerView, this);
    }

    public void fling(int i2, int i7) {
        RecyclerView recyclerView = this.f18213p;
        recyclerView.setScrollState(2);
        this.f18208e = 0;
        this.f18207b = 0;
        Interpolator interpolator = this.f18210j;
        Q q6 = RecyclerView.f8006R0;
        if (interpolator != q6) {
            this.f18210j = q6;
            this.f18209f = new OverScroller(recyclerView.getContext(), q6);
        }
        this.f18209f.fling(0, 0, i2, i7, Integer.MIN_VALUE, Log.LOG_LEVEL_OFF, Integer.MIN_VALUE, Log.LOG_LEVEL_OFF);
        a();
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2;
        int i7;
        int i8;
        int i9;
        boolean awakenScrollBars;
        RecyclerView recyclerView = this.f18213p;
        if (recyclerView.f8075w == null) {
            stop();
            return;
        }
        this.f18212n = false;
        this.f18211m = true;
        recyclerView.m();
        OverScroller overScroller = this.f18209f;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i10 = currX - this.f18207b;
            int i11 = currY - this.f18208e;
            this.f18207b = currX;
            this.f18208e = currY;
            int l7 = RecyclerView.l(i10, recyclerView.f8034R, recyclerView.f8036T, recyclerView.getWidth());
            int l8 = RecyclerView.l(i11, recyclerView.f8035S, recyclerView.f8037U, recyclerView.getHeight());
            int[] iArr = recyclerView.f8013C0;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean dispatchNestedPreScroll = recyclerView.dispatchNestedPreScroll(l7, l8, iArr, null, 1);
            int[] iArr2 = recyclerView.f8013C0;
            if (dispatchNestedPreScroll) {
                l7 -= iArr2[0];
                l8 -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.k(l7, l8);
            }
            if (recyclerView.f8073v != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                recyclerView.X(l7, l8, iArr2);
                int i12 = iArr2[0];
                int i13 = iArr2[1];
                int i14 = l7 - i12;
                int i15 = l8 - i13;
                w0 w0Var = recyclerView.f8075w.f18392e;
                if (w0Var != null && !w0Var.isPendingInitialRun() && w0Var.isRunning()) {
                    int itemCount = recyclerView.f8064q0.getItemCount();
                    if (itemCount == 0) {
                        w0Var.stop();
                    } else if (w0Var.getTargetPosition() >= itemCount) {
                        w0Var.setTargetPosition(itemCount - 1);
                        w0Var.a(i12, i13);
                    } else {
                        w0Var.a(i12, i13);
                    }
                }
                i2 = i14;
                i8 = i12;
                i7 = i15;
                i9 = i13;
            } else {
                i2 = l7;
                i7 = l8;
                i8 = 0;
                i9 = 0;
            }
            if (!recyclerView.f8081z.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.f8013C0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            recyclerView.dispatchNestedScroll(i8, i9, i2, i7, null, 1, iArr3);
            int i16 = i2 - iArr2[0];
            int i17 = i7 - iArr2[1];
            if (i8 != 0 || i9 != 0) {
                recyclerView.r(i8, i9);
            }
            awakenScrollBars = recyclerView.awakenScrollBars();
            if (!awakenScrollBars) {
                recyclerView.invalidate();
            }
            boolean z6 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i16 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i17 != 0));
            w0 w0Var2 = recyclerView.f8075w.f18392e;
            if ((w0Var2 == null || !w0Var2.isPendingInitialRun()) && z6) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i18 = i16 < 0 ? -currVelocity : i16 > 0 ? currVelocity : 0;
                    if (i17 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i17 <= 0) {
                        currVelocity = 0;
                    }
                    if (i18 < 0) {
                        recyclerView.t();
                        if (recyclerView.f8034R.isFinished()) {
                            recyclerView.f8034R.onAbsorb(-i18);
                        }
                    } else if (i18 > 0) {
                        recyclerView.u();
                        if (recyclerView.f8036T.isFinished()) {
                            recyclerView.f8036T.onAbsorb(i18);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.v();
                        if (recyclerView.f8035S.isFinished()) {
                            recyclerView.f8035S.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.s();
                        if (recyclerView.f8037U.isFinished()) {
                            recyclerView.f8037U.onAbsorb(currVelocity);
                        }
                    }
                    if (i18 != 0 || currVelocity != 0) {
                        AbstractC0181p0.postInvalidateOnAnimation(recyclerView);
                    }
                }
                if (RecyclerView.f8004P0) {
                    C1310w c1310w = recyclerView.f8062p0;
                    int[] iArr4 = c1310w.f18510c;
                    if (iArr4 != null) {
                        Arrays.fill(iArr4, -1);
                    }
                    c1310w.f18511d = 0;
                }
            } else {
                a();
                RunnableC1312y runnableC1312y = recyclerView.f8060o0;
                if (runnableC1312y != null) {
                    runnableC1312y.a(recyclerView, i8, i9);
                }
            }
        }
        w0 w0Var3 = recyclerView.f8075w.f18392e;
        if (w0Var3 != null && w0Var3.isPendingInitialRun()) {
            w0Var3.a(0, 0);
        }
        this.f18211m = false;
        if (this.f18212n) {
            recyclerView.removeCallbacks(this);
            AbstractC0181p0.postOnAnimation(recyclerView, this);
        } else {
            recyclerView.setScrollState(0);
            recyclerView.stopNestedScroll(1);
        }
    }

    public void smoothScrollBy(int i2, int i7, int i8, Interpolator interpolator) {
        RecyclerView recyclerView = this.f18213p;
        if (i8 == Integer.MIN_VALUE) {
            int abs = Math.abs(i2);
            int abs2 = Math.abs(i7);
            boolean z6 = abs > abs2;
            int width = z6 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z6) {
                abs = abs2;
            }
            i8 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
        }
        int i9 = i8;
        if (interpolator == null) {
            interpolator = RecyclerView.f8006R0;
        }
        if (this.f18210j != interpolator) {
            this.f18210j = interpolator;
            this.f18209f = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f18208e = 0;
        this.f18207b = 0;
        recyclerView.setScrollState(2);
        this.f18209f.startScroll(0, 0, i2, i7, i9);
        a();
    }

    public void stop() {
        this.f18213p.removeCallbacks(this);
        this.f18209f.abortAnimation();
    }
}
