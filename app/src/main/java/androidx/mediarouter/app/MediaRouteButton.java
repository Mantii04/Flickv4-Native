package androidx.mediarouter.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.fragment.app.AbstractC0467i0;
import androidx.fragment.app.v0;
import f1.C0906l0;
import l.t2;

/* loaded from: classes.dex */
public class MediaRouteButton extends View {

    /* renamed from: b, reason: collision with root package name */
    public final f1.X f7690b;

    /* renamed from: e, reason: collision with root package name */
    public final C0598b f7691e;

    /* renamed from: f, reason: collision with root package name */
    public f1.L f7692f;

    /* renamed from: j, reason: collision with root package name */
    public F f7693j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7694m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f7695n;

    /* renamed from: p, reason: collision with root package name */
    public AsyncTaskC0599c f7696p;

    /* renamed from: q, reason: collision with root package name */
    public Drawable f7697q;

    /* renamed from: r, reason: collision with root package name */
    public int f7698r;

    /* renamed from: s, reason: collision with root package name */
    public int f7699s;

    /* renamed from: t, reason: collision with root package name */
    public int f7700t;

    /* renamed from: u, reason: collision with root package name */
    public final ColorStateList f7701u;

    /* renamed from: v, reason: collision with root package name */
    public final int f7702v;

    /* renamed from: w, reason: collision with root package name */
    public final int f7703w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f7704x;

    /* renamed from: y, reason: collision with root package name */
    public static final SparseArray f7688y = new SparseArray(2);

    /* renamed from: z, reason: collision with root package name */
    public static final int[] f7689z = {R.attr.state_checked};

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f7687A = {R.attr.state_checkable};

    public MediaRouteButton(Context context) {
        this(context, null);
    }

    private Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    private AbstractC0467i0 getFragmentManager() {
        Activity activity = getActivity();
        if (activity instanceof androidx.fragment.app.H) {
            return ((androidx.fragment.app.H) activity).getSupportFragmentManager();
        }
        return null;
    }

    public final void a() {
        if (this.f7698r > 0) {
            AsyncTaskC0599c asyncTaskC0599c = this.f7696p;
            if (asyncTaskC0599c != null) {
                asyncTaskC0599c.cancel(false);
            }
            AsyncTaskC0599c asyncTaskC0599c2 = new AsyncTaskC0599c(this, this.f7698r, getContext());
            this.f7696p = asyncTaskC0599c2;
            this.f7698r = 0;
            asyncTaskC0599c2.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    public final void b() {
        f1.U selectedRoute = this.f7690b.getSelectedRoute();
        int connectionState = !selectedRoute.isDefaultOrBluetooth() ? selectedRoute.getConnectionState() : 0;
        if (this.f7700t != connectionState) {
            this.f7700t = connectionState;
            d();
            refreshDrawableState();
        }
        if (connectionState == 1) {
            a();
        }
    }

    public final boolean c(int i2) {
        AbstractC0467i0 fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
        }
        if (this.f7690b.getSelectedRoute().isDefaultOrBluetooth()) {
            if (fragmentManager.findFragmentByTag("android.support.v7.mediarouter:MediaRouteChooserDialogFragment") != null) {
                Log.w("MediaRouteButton", "showDialog(): Route chooser dialog already showing!");
                return false;
            }
            C0606j onCreateChooserDialogFragment = this.f7693j.onCreateChooserDialogFragment();
            onCreateChooserDialogFragment.setRouteSelector(this.f7692f);
            if (i2 == 2) {
                if (onCreateChooserDialogFragment.f7824w0 != null) {
                    throw new IllegalStateException("This must be called before creating dialog");
                }
                onCreateChooserDialogFragment.f7823v0 = true;
            }
            v0 beginTransaction = fragmentManager.beginTransaction();
            beginTransaction.add(onCreateChooserDialogFragment, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment");
            beginTransaction.commitAllowingStateLoss();
            return true;
        }
        if (fragmentManager.findFragmentByTag("android.support.v7.mediarouter:MediaRouteControllerDialogFragment") != null) {
            Log.w("MediaRouteButton", "showDialog(): Route controller dialog already showing!");
            return false;
        }
        E onCreateControllerDialogFragment = this.f7693j.onCreateControllerDialogFragment();
        onCreateControllerDialogFragment.setRouteSelector(this.f7692f);
        if (i2 == 2) {
            if (onCreateControllerDialogFragment.f7673w0 != null) {
                throw new IllegalStateException("This must be called before creating dialog");
            }
            onCreateControllerDialogFragment.f7672v0 = true;
        }
        v0 beginTransaction2 = fragmentManager.beginTransaction();
        beginTransaction2.add(onCreateControllerDialogFragment, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment");
        beginTransaction2.commitAllowingStateLoss();
        return true;
    }

    public final void d() {
        int i2 = this.f7700t;
        String string = getContext().getString(i2 != 1 ? i2 != 2 ? androidx.mediarouter.R.string.mr_cast_button_disconnected : androidx.mediarouter.R.string.mr_cast_button_connected : androidx.mediarouter.R.string.mr_cast_button_connecting);
        setContentDescription(string);
        if (!this.f7704x || TextUtils.isEmpty(string)) {
            string = null;
        }
        t2.setTooltipText(this, string);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f7697q != null) {
            this.f7697q.setState(getDrawableState());
            if (this.f7697q.getCurrent() instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) this.f7697q.getCurrent();
                int i2 = this.f7700t;
                if (i2 == 1 || this.f7699s != i2) {
                    if (!animationDrawable.isRunning()) {
                        animationDrawable.start();
                    }
                } else if (i2 == 2 && !animationDrawable.isRunning()) {
                    animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
                }
            }
            invalidate();
        }
        this.f7699s = this.f7700t;
    }

    public F getDialogFactory() {
        return this.f7693j;
    }

    public f1.L getRouteSelector() {
        return this.f7692f;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f7697q;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        this.f7694m = true;
        if (!this.f7692f.isEmpty()) {
            this.f7690b.addCallback(this.f7692f, this.f7691e);
        }
        b();
    }

    @Override // android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (this.f7690b != null && !this.f7695n) {
            int i7 = this.f7700t;
            if (i7 == 1) {
                View.mergeDrawableStates(onCreateDrawableState, f7687A);
                return onCreateDrawableState;
            }
            if (i7 == 2) {
                View.mergeDrawableStates(onCreateDrawableState, f7689z);
                return onCreateDrawableState;
            }
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        if (!isInEditMode()) {
            this.f7694m = false;
            if (!this.f7692f.isEmpty()) {
                this.f7690b.removeCallback(this.f7691e);
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f7697q != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int intrinsicWidth = this.f7697q.getIntrinsicWidth();
            int intrinsicHeight = this.f7697q.getIntrinsicHeight();
            int i2 = (((width - paddingLeft) - intrinsicWidth) / 2) + paddingLeft;
            int i7 = (((height - paddingTop) - intrinsicHeight) / 2) + paddingTop;
            this.f7697q.setBounds(i2, i7, intrinsicWidth + i2, intrinsicHeight + i7);
            this.f7697q.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i7);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i7);
        Drawable drawable = this.f7697q;
        int i9 = 0;
        if (drawable != null) {
            i8 = getPaddingRight() + getPaddingLeft() + drawable.getIntrinsicWidth();
        } else {
            i8 = 0;
        }
        int max = Math.max(this.f7702v, i8);
        Drawable drawable2 = this.f7697q;
        if (drawable2 != null) {
            i9 = getPaddingBottom() + getPaddingTop() + drawable2.getIntrinsicHeight();
        }
        int max2 = Math.max(this.f7703w, i9);
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(size, max);
        } else if (mode != 1073741824) {
            size = max;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(size2, max2);
        } else if (mode2 != 1073741824) {
            size2 = max2;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            playSoundEffect(0);
        }
        a();
        return showDialog() || performClick;
    }

    @Deprecated
    public void setAlwaysVisible(boolean z6) {
    }

    public void setCheatSheetEnabled(boolean z6) {
        if (z6 != this.f7704x) {
            this.f7704x = z6;
            d();
        }
    }

    public void setDialogFactory(F f3) {
        if (f3 == null) {
            throw new IllegalArgumentException("factory must not be null");
        }
        this.f7693j = f3;
    }

    public void setRemoteIndicatorDrawable(Drawable drawable) {
        this.f7698r = 0;
        setRemoteIndicatorDrawableInternal(drawable);
    }

    public void setRemoteIndicatorDrawableInternal(Drawable drawable) {
        AsyncTaskC0599c asyncTaskC0599c = this.f7696p;
        if (asyncTaskC0599c != null) {
            asyncTaskC0599c.cancel(false);
        }
        Drawable drawable2 = this.f7697q;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f7697q);
        }
        if (drawable != null) {
            ColorStateList colorStateList = this.f7701u;
            if (colorStateList != null) {
                drawable = E.c.wrap(drawable.mutate());
                E.c.setTintList(drawable, colorStateList);
            }
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            drawable.setVisible(getVisibility() == 0, false);
        }
        this.f7697q = drawable;
        refreshDrawableState();
    }

    public void setRouteSelector(f1.L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f7692f.equals(l7)) {
            return;
        }
        if (this.f7694m) {
            boolean isEmpty = this.f7692f.isEmpty();
            C0598b c0598b = this.f7691e;
            f1.X x6 = this.f7690b;
            if (!isEmpty) {
                x6.removeCallback(c0598b);
            }
            if (!l7.isEmpty()) {
                x6.addCallback(l7, c0598b);
            }
        }
        this.f7692f = l7;
        b();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        Drawable drawable = this.f7697q;
        if (drawable != null) {
            drawable.setVisible(i2 == 0, false);
        }
    }

    public boolean showDialog() {
        if (!this.f7694m) {
            return false;
        }
        C0906l0 routerParams = this.f7690b.getRouterParams();
        if (routerParams == null) {
            return c(1);
        }
        if (routerParams.isOutputSwitcherEnabled() && f1.X.isMediaTransferEnabled() && t0.showDialog(getContext())) {
            return true;
        }
        return c(routerParams.getDialogType());
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7697q;
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.mediarouter.R.attr.mediaRouteButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaRouteButton(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            r8 = this;
            int r0 = androidx.mediarouter.app.o0.f7886a
            android.view.ContextThemeWrapper r0 = new android.view.ContextThemeWrapper
            int r1 = androidx.mediarouter.app.o0.e(r9)
            r0.<init>(r9, r1)
            int r9 = androidx.mediarouter.R.attr.mediaRouteTheme
            int r9 = androidx.mediarouter.app.o0.g(r0, r9)
            if (r9 == 0) goto L19
            android.view.ContextThemeWrapper r1 = new android.view.ContextThemeWrapper
            r1.<init>(r0, r9)
            r0 = r1
        L19:
            r8.<init>(r0, r10, r11)
            f1.L r9 = f1.L.f14160c
            r8.f7692f = r9
            androidx.mediarouter.app.F r9 = androidx.mediarouter.app.F.getDefault()
            r8.f7693j = r9
            android.content.Context r1 = r8.getContext()
            int[] r9 = androidx.mediarouter.R.styleable.MediaRouteButton
            r7 = 0
            android.content.res.TypedArray r4 = r1.obtainStyledAttributes(r10, r9, r11, r7)
            int[] r2 = androidx.mediarouter.R.styleable.MediaRouteButton
            r6 = 0
            r0 = r8
            r3 = r10
            r5 = r11
            M.AbstractC0181p0.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5, r6)
            boolean r9 = r8.isInEditMode()
            if (r9 == 0) goto L52
            r9 = 0
            r0.f7690b = r9
            r0.f7691e = r9
            int r9 = androidx.mediarouter.R.styleable.MediaRouteButton_externalRouteEnabledDrawableStatic
            int r9 = r4.getResourceId(r9, r7)
            android.graphics.drawable.Drawable r9 = f.AbstractC0876a.getDrawable(r1, r9)
            r0.f7697q = r9
            return
        L52:
            f1.X r9 = f1.X.getInstance(r1)
            r0.f7690b = r9
            androidx.mediarouter.app.b r10 = new androidx.mediarouter.app.b
            r10.<init>(r8)
            r0.f7691e = r10
            f1.U r9 = r9.getSelectedRoute()
            boolean r10 = r9.isDefaultOrBluetooth()
            if (r10 != 0) goto L6e
            int r9 = r9.getConnectionState()
            goto L6f
        L6e:
            r9 = r7
        L6f:
            r0.f7700t = r9
            r0.f7699s = r9
            int r9 = androidx.mediarouter.R.styleable.MediaRouteButton_mediaRouteButtonTint
            android.content.res.ColorStateList r9 = r4.getColorStateList(r9)
            r0.f7701u = r9
            int r9 = androidx.mediarouter.R.styleable.MediaRouteButton_android_minWidth
            int r9 = r4.getDimensionPixelSize(r9, r7)
            r0.f7702v = r9
            int r9 = androidx.mediarouter.R.styleable.MediaRouteButton_android_minHeight
            int r9 = r4.getDimensionPixelSize(r9, r7)
            r0.f7703w = r9
            int r9 = androidx.mediarouter.R.styleable.MediaRouteButton_externalRouteEnabledDrawableStatic
            int r9 = r4.getResourceId(r9, r7)
            int r10 = androidx.mediarouter.R.styleable.MediaRouteButton_externalRouteEnabledDrawable
            int r10 = r4.getResourceId(r10, r7)
            r0.f7698r = r10
            r4.recycle()
            int r10 = r0.f7698r
            android.util.SparseArray r11 = androidx.mediarouter.app.MediaRouteButton.f7688y
            if (r10 == 0) goto Lb1
            java.lang.Object r10 = r11.get(r10)
            android.graphics.drawable.Drawable$ConstantState r10 = (android.graphics.drawable.Drawable.ConstantState) r10
            if (r10 == 0) goto Lb1
            android.graphics.drawable.Drawable r10 = r10.newDrawable()
            r8.setRemoteIndicatorDrawable(r10)
        Lb1:
            android.graphics.drawable.Drawable r10 = r0.f7697q
            if (r10 != 0) goto Ldd
            if (r9 == 0) goto Lda
            java.lang.Object r10 = r11.get(r9)
            android.graphics.drawable.Drawable$ConstantState r10 = (android.graphics.drawable.Drawable.ConstantState) r10
            if (r10 == 0) goto Lc7
            android.graphics.drawable.Drawable r9 = r10.newDrawable()
            r8.setRemoteIndicatorDrawableInternal(r9)
            goto Ldd
        Lc7:
            androidx.mediarouter.app.c r10 = new androidx.mediarouter.app.c
            android.content.Context r11 = r8.getContext()
            r10.<init>(r8, r9, r11)
            r0.f7696p = r10
            java.util.concurrent.Executor r9 = android.os.AsyncTask.SERIAL_EXECUTOR
            java.lang.Void[] r11 = new java.lang.Void[r7]
            r10.executeOnExecutor(r9, r11)
            goto Ldd
        Lda:
            r8.a()
        Ldd:
            r8.d()
            r9 = 1
            r8.setClickable(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
