package m1;

import M.AbstractC0181p0;
import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.loopj.android.http.AsyncHttpClient;

/* renamed from: m1.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1308u extends AbstractC1276d0 implements InterfaceC1292l0 {

    /* renamed from: D, reason: collision with root package name */
    public static final int[] f18470D = {R.attr.state_pressed};

    /* renamed from: E, reason: collision with root package name */
    public static final int[] f18471E = new int[0];

    /* renamed from: A, reason: collision with root package name */
    public int f18472A;

    /* renamed from: B, reason: collision with root package name */
    public final RunnableC1301q f18473B;

    /* renamed from: C, reason: collision with root package name */
    public final r f18474C;

    /* renamed from: a, reason: collision with root package name */
    public final int f18475a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18476b;

    /* renamed from: c, reason: collision with root package name */
    public final StateListDrawable f18477c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f18478d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18479e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18480f;

    /* renamed from: g, reason: collision with root package name */
    public final StateListDrawable f18481g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f18482h;

    /* renamed from: i, reason: collision with root package name */
    public final int f18483i;

    /* renamed from: j, reason: collision with root package name */
    public final int f18484j;

    /* renamed from: k, reason: collision with root package name */
    public int f18485k;

    /* renamed from: l, reason: collision with root package name */
    public int f18486l;

    /* renamed from: m, reason: collision with root package name */
    public float f18487m;

    /* renamed from: n, reason: collision with root package name */
    public int f18488n;

    /* renamed from: o, reason: collision with root package name */
    public int f18489o;

    /* renamed from: p, reason: collision with root package name */
    public float f18490p;

    /* renamed from: s, reason: collision with root package name */
    public RecyclerView f18493s;

    /* renamed from: z, reason: collision with root package name */
    public final ValueAnimator f18500z;

    /* renamed from: q, reason: collision with root package name */
    public int f18491q = 0;

    /* renamed from: r, reason: collision with root package name */
    public int f18492r = 0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f18494t = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f18495u = false;

    /* renamed from: v, reason: collision with root package name */
    public int f18496v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f18497w = 0;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f18498x = new int[2];

    /* renamed from: y, reason: collision with root package name */
    public final int[] f18499y = new int[2];

    public C1308u(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i7, int i8) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f18500z = ofFloat;
        this.f18472A = 0;
        this.f18473B = new RunnableC1301q(this);
        this.f18474C = new r(this);
        this.f18477c = stateListDrawable;
        this.f18478d = drawable;
        this.f18481g = stateListDrawable2;
        this.f18482h = drawable2;
        this.f18479e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f18480f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f18483i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f18484j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f18475a = i7;
        this.f18476b = i8;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new C1304s(this));
        ofFloat.addUpdateListener(new C1306t(this));
        attachToRecyclerView(recyclerView);
    }

    public static int c(float f3, float f7, int[] iArr, int i2, int i7, int i8) {
        int i9 = iArr[1] - iArr[0];
        if (i9 != 0) {
            int i10 = i2 - i8;
            int i11 = (int) (((f7 - f3) / i9) * i10);
            int i12 = i7 + i11;
            if (i12 < i10 && i12 >= 0) {
                return i11;
            }
        }
        return 0;
    }

    public final boolean a(float f3, float f7) {
        if (f7 < this.f18492r - this.f18483i) {
            return false;
        }
        int i2 = this.f18489o;
        int i7 = this.f18488n;
        return f3 >= ((float) (i2 - (i7 / 2))) && f3 <= ((float) ((i7 / 2) + i2));
    }

    public void attachToRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f18493s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        r rVar = this.f18474C;
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.f18493s.removeOnItemTouchListener(this);
            this.f18493s.removeOnScrollListener(rVar);
            this.f18493s.removeCallbacks(this.f18473B);
        }
        this.f18493s = recyclerView;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(this);
            this.f18493s.addOnItemTouchListener(this);
            this.f18493s.addOnScrollListener(rVar);
        }
    }

    public final boolean b(float f3, float f7) {
        boolean z6 = AbstractC0181p0.getLayoutDirection(this.f18493s) == 1;
        int i2 = this.f18479e;
        if (!z6 ? f3 >= this.f18491q - i2 : f3 <= i2) {
            int i7 = this.f18486l;
            int i8 = this.f18485k / 2;
            if (f7 >= i7 - i8 && f7 <= i8 + i7) {
                return true;
            }
        }
        return false;
    }

    public final void d(int i2) {
        RunnableC1301q runnableC1301q = this.f18473B;
        StateListDrawable stateListDrawable = this.f18477c;
        if (i2 == 2 && this.f18496v != 2) {
            stateListDrawable.setState(f18470D);
            this.f18493s.removeCallbacks(runnableC1301q);
        }
        if (i2 == 0) {
            this.f18493s.invalidate();
        } else {
            show();
        }
        if (this.f18496v == 2 && i2 != 2) {
            stateListDrawable.setState(f18471E);
            this.f18493s.removeCallbacks(runnableC1301q);
            this.f18493s.postDelayed(runnableC1301q, 1200);
        } else if (i2 == 1) {
            this.f18493s.removeCallbacks(runnableC1301q);
            this.f18493s.postDelayed(runnableC1301q, AsyncHttpClient.DEFAULT_RETRY_SLEEP_TIME_MILLIS);
        }
        this.f18496v = i2;
    }

    @Override // m1.AbstractC1276d0
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, x0 x0Var) {
        if (this.f18491q != this.f18493s.getWidth() || this.f18492r != this.f18493s.getHeight()) {
            this.f18491q = this.f18493s.getWidth();
            this.f18492r = this.f18493s.getHeight();
            d(0);
            return;
        }
        if (this.f18472A != 0) {
            if (this.f18494t) {
                int i2 = this.f18491q;
                int i7 = this.f18479e;
                int i8 = i2 - i7;
                int i9 = this.f18486l;
                int i10 = this.f18485k;
                int i11 = i9 - (i10 / 2);
                StateListDrawable stateListDrawable = this.f18477c;
                stateListDrawable.setBounds(0, 0, i7, i10);
                int i12 = this.f18492r;
                int i13 = this.f18480f;
                Drawable drawable = this.f18478d;
                drawable.setBounds(0, 0, i13, i12);
                if (AbstractC0181p0.getLayoutDirection(this.f18493s) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i7, i11);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i7, -i11);
                } else {
                    canvas.translate(i8, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i11);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i8, -i11);
                }
            }
            if (this.f18495u) {
                int i14 = this.f18492r;
                int i15 = this.f18483i;
                int i16 = i14 - i15;
                int i17 = this.f18489o;
                int i18 = this.f18488n;
                int i19 = i17 - (i18 / 2);
                StateListDrawable stateListDrawable2 = this.f18481g;
                stateListDrawable2.setBounds(0, 0, i18, i15);
                int i20 = this.f18491q;
                int i21 = this.f18484j;
                Drawable drawable2 = this.f18482h;
                drawable2.setBounds(0, 0, i20, i21);
                canvas.translate(0.0f, i16);
                drawable2.draw(canvas);
                canvas.translate(i19, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i19, -i16);
            }
        }
    }

    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i2 = this.f18496v;
        if (i2 != 1) {
            return i2 == 2;
        }
        boolean b7 = b(motionEvent.getX(), motionEvent.getY());
        boolean a7 = a(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() != 0) {
            return false;
        }
        if (!b7 && !a7) {
            return false;
        }
        if (a7) {
            this.f18497w = 1;
            this.f18490p = (int) motionEvent.getX();
        } else if (b7) {
            this.f18497w = 2;
            this.f18487m = (int) motionEvent.getY();
        }
        d(2);
        return true;
    }

    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f18496v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean b7 = b(motionEvent.getX(), motionEvent.getY());
            boolean a7 = a(motionEvent.getX(), motionEvent.getY());
            if (b7 || a7) {
                if (a7) {
                    this.f18497w = 1;
                    this.f18490p = (int) motionEvent.getX();
                } else if (b7) {
                    this.f18497w = 2;
                    this.f18487m = (int) motionEvent.getY();
                }
                d(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f18496v == 2) {
            this.f18487m = 0.0f;
            this.f18490p = 0.0f;
            d(1);
            this.f18497w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f18496v == 2) {
            show();
            int i2 = this.f18497w;
            int i7 = this.f18476b;
            if (i2 == 1) {
                float x6 = motionEvent.getX();
                int[] iArr = this.f18499y;
                iArr[0] = i7;
                int i8 = this.f18491q - i7;
                iArr[1] = i8;
                float max = Math.max(i7, Math.min(i8, x6));
                if (Math.abs(this.f18489o - max) >= 2.0f) {
                    int c7 = c(this.f18490p, max, iArr, this.f18493s.computeHorizontalScrollRange(), this.f18493s.computeHorizontalScrollOffset(), this.f18491q);
                    if (c7 != 0) {
                        this.f18493s.scrollBy(c7, 0);
                    }
                    this.f18490p = max;
                }
            }
            if (this.f18497w == 2) {
                float y6 = motionEvent.getY();
                int[] iArr2 = this.f18498x;
                iArr2[0] = i7;
                int i9 = this.f18492r - i7;
                iArr2[1] = i9;
                float max2 = Math.max(i7, Math.min(i9, y6));
                if (Math.abs(this.f18486l - max2) < 2.0f) {
                    return;
                }
                int c8 = c(this.f18487m, max2, iArr2, this.f18493s.computeVerticalScrollRange(), this.f18493s.computeVerticalScrollOffset(), this.f18492r);
                if (c8 != 0) {
                    this.f18493s.scrollBy(0, c8);
                }
                this.f18487m = max2;
            }
        }
    }

    public void show() {
        int i2 = this.f18472A;
        ValueAnimator valueAnimator = this.f18500z;
        if (i2 != 0) {
            if (i2 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.f18472A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    public void onRequestDisallowInterceptTouchEvent(boolean z6) {
    }
}
