package l;

import M.AbstractC0181p0;
import M.AbstractC0188t0;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public final class v2 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: t, reason: collision with root package name */
    public static v2 f18028t;

    /* renamed from: u, reason: collision with root package name */
    public static v2 f18029u;

    /* renamed from: b, reason: collision with root package name */
    public final View f18030b;

    /* renamed from: e, reason: collision with root package name */
    public final CharSequence f18031e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18032f;

    /* renamed from: j, reason: collision with root package name */
    public final u2 f18033j;

    /* renamed from: m, reason: collision with root package name */
    public final u2 f18034m;

    /* renamed from: n, reason: collision with root package name */
    public int f18035n;

    /* renamed from: p, reason: collision with root package name */
    public int f18036p;

    /* renamed from: q, reason: collision with root package name */
    public w2 f18037q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f18038r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18039s = true;

    /* JADX WARN: Type inference failed for: r0v0, types: [l.u2] */
    /* JADX WARN: Type inference failed for: r0v1, types: [l.u2] */
    public v2(View view, CharSequence charSequence) {
        final int i2 = 0;
        this.f18033j = new Runnable(this) { // from class: l.u2

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ v2 f18022e;

            {
                this.f18022e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        this.f18022e.c(false);
                        break;
                    default:
                        this.f18022e.a();
                        break;
                }
            }
        };
        final int i7 = 1;
        this.f18034m = new Runnable(this) { // from class: l.u2

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ v2 f18022e;

            {
                this.f18022e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i7) {
                    case 0:
                        this.f18022e.c(false);
                        break;
                    default:
                        this.f18022e.a();
                        break;
                }
            }
        };
        this.f18030b = view;
        this.f18031e = charSequence;
        this.f18032f = AbstractC0188t0.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(v2 v2Var) {
        v2 v2Var2 = f18028t;
        if (v2Var2 != null) {
            v2Var2.f18030b.removeCallbacks(v2Var2.f18033j);
        }
        f18028t = v2Var;
        if (v2Var != null) {
            v2Var.f18030b.postDelayed(v2Var.f18033j, ViewConfiguration.getLongPressTimeout());
        }
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        v2 v2Var = f18028t;
        if (v2Var != null && v2Var.f18030b == view) {
            b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new v2(view, charSequence);
            return;
        }
        v2 v2Var2 = f18029u;
        if (v2Var2 != null && v2Var2.f18030b == view) {
            v2Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public final void a() {
        v2 v2Var = f18029u;
        View view = this.f18030b;
        if (v2Var == this) {
            f18029u = null;
            w2 w2Var = this.f18037q;
            if (w2Var != null) {
                View view2 = w2Var.f18041b;
                if (view2.getParent() != null) {
                    ((WindowManager) w2Var.f18040a.getSystemService("window")).removeView(view2);
                }
                this.f18037q = null;
                this.f18039s = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f18028t == this) {
            b(null);
        }
        view.removeCallbacks(this.f18034m);
    }

    public final void c(boolean z6) {
        int height;
        int i2;
        int i7;
        int i8;
        int i9;
        int i10;
        long longPressTimeout;
        long j7;
        long j8;
        View view = this.f18030b;
        if (AbstractC0181p0.isAttachedToWindow(view)) {
            b(null);
            v2 v2Var = f18029u;
            if (v2Var != null) {
                v2Var.a();
            }
            f18029u = this;
            this.f18038r = z6;
            w2 w2Var = new w2(view.getContext());
            this.f18037q = w2Var;
            int i11 = this.f18035n;
            int i12 = this.f18036p;
            boolean z7 = this.f18038r;
            View view2 = w2Var.f18041b;
            ViewParent parent = view2.getParent();
            Context context = w2Var.f18040a;
            if (parent != null && view2.getParent() != null) {
                ((WindowManager) context.getSystemService("window")).removeView(view2);
            }
            w2Var.f18042c.setText(this.f18031e);
            WindowManager.LayoutParams layoutParams = w2Var.f18043d;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                i11 = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i12 + dimensionPixelOffset2;
                i2 = i12 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i2 = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z7 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context2 = view.getContext();
                while (true) {
                    if (!(context2 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                    context2 = ((ContextWrapper) context2).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
                i10 = 1;
            } else {
                Rect rect = w2Var.f18044e;
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i7 = i11;
                    i8 = i2;
                    i9 = 0;
                    i10 = 1;
                } else {
                    Resources resources = context.getResources();
                    i10 = 1;
                    i7 = i11;
                    i8 = i2;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i9 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                int[] iArr = w2Var.f18046g;
                rootView.getLocationOnScreen(iArr);
                int[] iArr2 = w2Var.f18045f;
                view.getLocationOnScreen(iArr2);
                int i13 = iArr2[i9] - iArr[i9];
                iArr2[i9] = i13;
                iArr2[i10] = iArr2[i10] - iArr[i10];
                layoutParams.x = (i13 + i7) - (rootView.getWidth() / 2);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9, i9);
                view2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i14 = iArr2[i10];
                int i15 = ((i14 + i8) - dimensionPixelOffset3) - measuredHeight;
                int i16 = i14 + height + dimensionPixelOffset3;
                if (z7) {
                    if (i15 >= 0) {
                        layoutParams.y = i15;
                    } else {
                        layoutParams.y = i16;
                    }
                } else if (measuredHeight + i16 <= rect.height()) {
                    layoutParams.y = i16;
                } else {
                    layoutParams.y = i15;
                }
            }
            ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.f18038r) {
                j8 = 2500;
            } else {
                if ((AbstractC0181p0.getWindowSystemUiVisibility(view) & 1) == i10) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j7 = androidx.media3.common.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j7 = 15000;
                }
                j8 = j7 - longPressTimeout;
            }
            u2 u2Var = this.f18034m;
            view.removeCallbacks(u2Var);
            view.postDelayed(u2Var, j8);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        if (java.lang.Math.abs(r5 - r3.f18036p) <= r2) goto L30;
     */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            l.w2 r4 = r3.f18037q
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.f18038r
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.f18030b
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.f18039s = r4
            r3.a()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            l.w2 r4 = r3.f18037q
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.f18039s
            if (r1 != 0) goto L66
            int r1 = r3.f18035n
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.f18032f
            if (r1 > r2) goto L66
            int r1 = r3.f18036p
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.f18035n = r4
            r3.f18036p = r5
            r3.f18039s = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: l.v2.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f18035n = view.getWidth() / 2;
        this.f18036p = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }
}
