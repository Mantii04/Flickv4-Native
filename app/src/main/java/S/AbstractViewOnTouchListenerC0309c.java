package S;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;

/* renamed from: S.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC0309c implements View.OnTouchListener {

    /* renamed from: z, reason: collision with root package name */
    public static final int f3224z = ViewConfiguration.getTapTimeout();

    /* renamed from: b, reason: collision with root package name */
    public final C0307a f3225b;

    /* renamed from: e, reason: collision with root package name */
    public final AccelerateInterpolator f3226e;

    /* renamed from: f, reason: collision with root package name */
    public final View f3227f;

    /* renamed from: j, reason: collision with root package name */
    public RunnableC0308b f3228j;

    /* renamed from: m, reason: collision with root package name */
    public final float[] f3229m;

    /* renamed from: n, reason: collision with root package name */
    public final float[] f3230n;

    /* renamed from: p, reason: collision with root package name */
    public int f3231p;

    /* renamed from: q, reason: collision with root package name */
    public int f3232q;

    /* renamed from: r, reason: collision with root package name */
    public final float[] f3233r;

    /* renamed from: s, reason: collision with root package name */
    public final float[] f3234s;

    /* renamed from: t, reason: collision with root package name */
    public final float[] f3235t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3236u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f3237v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f3238w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f3239x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f3240y;

    public AbstractViewOnTouchListenerC0309c(View view) {
        C0307a c0307a = new C0307a();
        c0307a.f3216e = Long.MIN_VALUE;
        c0307a.f3220i = -1L;
        c0307a.f3217f = 0L;
        c0307a.f3218g = 0;
        c0307a.f3219h = 0;
        this.f3225b = c0307a;
        this.f3226e = new AccelerateInterpolator();
        this.f3229m = new float[]{0.0f, 0.0f};
        this.f3230n = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.f3233r = new float[]{0.0f, 0.0f};
        this.f3234s = new float[]{0.0f, 0.0f};
        this.f3235t = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.f3227f = view;
        float f3 = Resources.getSystem().getDisplayMetrics().density;
        float f7 = (int) ((1575.0f * f3) + 0.5f);
        setMaximumVelocity(f7, f7);
        float f8 = (int) ((f3 * 315.0f) + 0.5f);
        setMinimumVelocity(f8, f8);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(f3224z);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    public static float b(float f3, float f7, float f8) {
        return f3 > f8 ? f8 : f3 < f7 ? f7 : f3;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(float r4, float r5, float r6, int r7) {
        /*
            r3 = this;
            float[] r0 = r3.f3229m
            r0 = r0[r7]
            float[] r1 = r3.f3230n
            r1 = r1[r7]
            float r0 = r0 * r5
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r4, r0)
            float r5 = r5 - r4
            float r4 = r3.c(r5, r0)
            float r4 = r4 - r1
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            android.view.animation.AccelerateInterpolator r0 = r3.f3226e
            if (r5 >= 0) goto L25
            float r4 = -r4
            float r4 = r0.getInterpolation(r4)
            float r4 = -r4
            goto L2d
        L25:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 <= 0) goto L36
            float r4 = r0.getInterpolation(r4)
        L2d:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = b(r4, r5, r0)
            goto L37
        L36:
            r4 = r2
        L37:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 != 0) goto L3c
            return r2
        L3c:
            float[] r0 = r3.f3233r
            r0 = r0[r7]
            float[] r1 = r3.f3234s
            r1 = r1[r7]
            float[] r2 = r3.f3235t
            r7 = r2[r7]
            float r0 = r0 * r6
            if (r5 <= 0) goto L51
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            return r4
        L51:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: S.AbstractViewOnTouchListenerC0309c.a(float, float, float, int):float");
    }

    public final float c(float f3, float f7) {
        if (f7 != 0.0f) {
            int i2 = this.f3231p;
            if (i2 == 0 || i2 == 1) {
                if (f3 < f7) {
                    if (f3 >= 0.0f) {
                        return 1.0f - (f3 / f7);
                    }
                    if (this.f3239x && i2 == 1) {
                        return 1.0f;
                    }
                }
            } else if (i2 == 2 && f3 < 0.0f) {
                return f3 / (-f7);
            }
        }
        return 0.0f;
    }

    public abstract boolean canTargetScrollHorizontally(int i2);

    public abstract boolean canTargetScrollVertically(int i2);

    public final boolean d() {
        C0307a c0307a = this.f3225b;
        int verticalDirection = c0307a.getVerticalDirection();
        int horizontalDirection = c0307a.getHorizontalDirection();
        if (verticalDirection == 0 || !canTargetScrollVertically(verticalDirection)) {
            return horizontalDirection != 0 && canTargetScrollHorizontally(horizontalDirection);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if (r0 != 3) goto L34;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r9, android.view.MotionEvent r10) {
        /*
            r8 = this;
            boolean r0 = r8.f3240y
            r1 = 0
            if (r0 != 0) goto L7
            goto L80
        L7:
            int r0 = r10.getActionMasked()
            S.a r2 = r8.f3225b
            r3 = 1
            if (r0 == 0) goto L24
            if (r0 == r3) goto L19
            r4 = 2
            if (r0 == r4) goto L28
            r9 = 3
            if (r0 == r9) goto L19
            goto L80
        L19:
            boolean r9 = r8.f3237v
            if (r9 == 0) goto L20
            r8.f3239x = r1
            return r1
        L20:
            r2.requestStop()
            return r1
        L24:
            r8.f3238w = r3
            r8.f3236u = r1
        L28:
            float r0 = r10.getX()
            int r4 = r9.getWidth()
            float r4 = (float) r4
            android.view.View r5 = r8.f3227f
            int r6 = r5.getWidth()
            float r6 = (float) r6
            float r0 = r8.a(r0, r4, r6, r1)
            float r10 = r10.getY()
            int r9 = r9.getHeight()
            float r9 = (float) r9
            int r4 = r5.getHeight()
            float r4 = (float) r4
            float r9 = r8.a(r10, r9, r4, r3)
            r2.setTargetVelocity(r0, r9)
            boolean r9 = r8.f3239x
            if (r9 != 0) goto L80
            boolean r9 = r8.d()
            if (r9 == 0) goto L80
            S.b r9 = r8.f3228j
            if (r9 != 0) goto L66
            S.b r9 = new S.b
            r9.<init>(r8)
            r8.f3228j = r9
        L66:
            r8.f3239x = r3
            r8.f3237v = r3
            boolean r9 = r8.f3236u
            if (r9 != 0) goto L79
            int r9 = r8.f3232q
            if (r9 <= 0) goto L79
            S.b r10 = r8.f3228j
            long r6 = (long) r9
            M.AbstractC0181p0.postOnAnimationDelayed(r5, r10, r6)
            goto L7e
        L79:
            S.b r9 = r8.f3228j
            r9.run()
        L7e:
            r8.f3236u = r3
        L80:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: S.AbstractViewOnTouchListenerC0309c.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void scrollTargetBy(int i2, int i7);

    public AbstractViewOnTouchListenerC0309c setActivationDelay(int i2) {
        this.f3232q = i2;
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setEdgeType(int i2) {
        this.f3231p = i2;
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setEnabled(boolean z6) {
        if (this.f3240y && !z6) {
            if (this.f3237v) {
                this.f3239x = false;
            } else {
                this.f3225b.requestStop();
            }
        }
        this.f3240y = z6;
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setMaximumEdges(float f3, float f7) {
        float[] fArr = this.f3230n;
        fArr[0] = f3;
        fArr[1] = f7;
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setMaximumVelocity(float f3, float f7) {
        float[] fArr = this.f3235t;
        fArr[0] = f3 / 1000.0f;
        fArr[1] = f7 / 1000.0f;
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setMinimumVelocity(float f3, float f7) {
        float[] fArr = this.f3234s;
        fArr[0] = f3 / 1000.0f;
        fArr[1] = f7 / 1000.0f;
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setRampDownDuration(int i2) {
        this.f3225b.setRampDownDuration(i2);
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setRampUpDuration(int i2) {
        this.f3225b.setRampUpDuration(i2);
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setRelativeEdges(float f3, float f7) {
        float[] fArr = this.f3229m;
        fArr[0] = f3;
        fArr[1] = f7;
        return this;
    }

    public AbstractViewOnTouchListenerC0309c setRelativeVelocity(float f3, float f7) {
        float[] fArr = this.f3233r;
        fArr[0] = f3 / 1000.0f;
        fArr[1] = f7 / 1000.0f;
        return this;
    }
}
