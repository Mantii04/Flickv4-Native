package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class l extends Drawable implements Drawable.Callback {

    /* renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f16361v = 0;

    /* renamed from: b, reason: collision with root package name */
    public b f16362b;

    /* renamed from: e, reason: collision with root package name */
    public Rect f16363e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f16364f;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f16365j;

    /* renamed from: n, reason: collision with root package name */
    public boolean f16367n;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16369q;

    /* renamed from: r, reason: collision with root package name */
    public h f16370r;

    /* renamed from: s, reason: collision with root package name */
    public long f16371s;

    /* renamed from: t, reason: collision with root package name */
    public long f16372t;

    /* renamed from: u, reason: collision with root package name */
    public j f16373u;

    /* renamed from: m, reason: collision with root package name */
    public int f16366m = 255;

    /* renamed from: p, reason: collision with root package name */
    public int f16368p = -1;

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f16367n = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f16364f
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L36
            long r9 = r13.f16371s
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L38
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f16366m
            r3.setAlpha(r9)
            r13.f16371s = r6
            goto L38
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r9 = (int) r9
            g.b r10 = r13.f16362b
            int r10 = r10.f16359y
            int r9 = r9 / r10
            int r9 = 255 - r9
            int r10 = r13.f16366m
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = r0
            goto L39
        L36:
            r13.f16371s = r6
        L38:
            r3 = r8
        L39:
            android.graphics.drawable.Drawable r9 = r13.f16365j
            if (r9 == 0) goto L61
            long r10 = r13.f16372t
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L63
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L50
            r9.setVisible(r8, r8)
            r0 = 0
            r13.f16365j = r0
            r13.f16372t = r6
            goto L63
        L50:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            g.b r4 = r13.f16362b
            int r4 = r4.f16360z
            int r3 = r3 / r4
            int r4 = r13.f16366m
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L64
        L61:
            r13.f16372t = r6
        L63:
            r0 = r3
        L64:
            if (r14 == 0) goto L70
            if (r0 == 0) goto L70
            g.h r14 = r13.f16370r
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g.l.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        b bVar = this.f16362b;
        if (theme == null) {
            bVar.getClass();
            return;
        }
        bVar.a();
        int i2 = bVar.f16342h;
        Drawable[] drawableArr = bVar.f16341g;
        for (int i7 = 0; i7 < i2; i7++) {
            Drawable drawable = drawableArr[i7];
            if (drawable != null && E.c.canApplyTheme(drawable)) {
                E.c.applyTheme(drawableArr[i7], theme);
                bVar.f16339e |= drawableArr[i7].getChangingConfigurations();
            }
        }
        Resources resources = i.getResources(theme);
        if (resources != null) {
            bVar.f16336b = resources;
            int i8 = resources.getDisplayMetrics().densityDpi;
            if (i8 == 0) {
                i8 = 160;
            }
            int i9 = bVar.f16337c;
            bVar.f16337c = i8;
            if (i9 != i8) {
                bVar.f16347m = false;
                bVar.f16344j = false;
            }
        }
    }

    public final void b(Drawable drawable) {
        if (this.f16373u == null) {
            this.f16373u = new j();
        }
        drawable.setCallback(this.f16373u.wrap(drawable.getCallback()));
        try {
            if (this.f16362b.f16359y <= 0 && this.f16367n) {
                drawable.setAlpha(this.f16366m);
            }
            b bVar = this.f16362b;
            if (bVar.f16330C) {
                drawable.setColorFilter(bVar.f16329B);
            } else {
                if (bVar.f16333F) {
                    E.c.setTintList(drawable, bVar.f16331D);
                }
                b bVar2 = this.f16362b;
                if (bVar2.f16334G) {
                    E.c.setTintMode(drawable, bVar2.f16332E);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f16362b.f16357w);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            E.c.setLayoutDirection(drawable, E.c.getLayoutDirection(this));
            E.c.setAutoMirrored(drawable, this.f16362b.f16328A);
            Rect rect = this.f16363e;
            if (rect != null) {
                E.c.setHotspotBounds(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
            drawable.setCallback(this.f16373u.unwrap());
        } catch (Throwable th) {
            drawable.setCallback(this.f16373u.unwrap());
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(int r10) {
        /*
            r9 = this;
            int r0 = r9.f16368p
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            g.b r0 = r9.f16362b
            int r0 = r0.f16360z
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f16365j
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f16364f
            if (r0 == 0) goto L29
            r9.f16365j = r0
            g.b r0 = r9.f16362b
            int r0 = r0.f16360z
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f16372t = r0
            goto L35
        L29:
            r9.f16365j = r4
            r9.f16372t = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f16364f
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            g.b r0 = r9.f16362b
            int r1 = r0.f16342h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.getChild(r10)
            r9.f16364f = r0
            r9.f16368p = r10
            if (r0 == 0) goto L5a
            g.b r10 = r9.f16362b
            int r10 = r10.f16359y
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f16371s = r2
        L51:
            r9.b(r0)
            goto L5a
        L55:
            r9.f16364f = r4
            r10 = -1
            r9.f16368p = r10
        L5a:
            long r0 = r9.f16371s
            int r10 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            r0 = 1
            if (r10 != 0) goto L67
            long r1 = r9.f16372t
            int r10 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r10 == 0) goto L7c
        L67:
            g.h r10 = r9.f16370r
            if (r10 != 0) goto L76
            g.h r10 = new g.h
            r1 = r9
            g.g r1 = (g.g) r1
            r10.<init>(r1)
            r9.f16370r = r10
            goto L79
        L76:
            r9.unscheduleSelf(r10)
        L79:
            r9.a(r0)
        L7c:
            r9.invalidateSelf()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: g.l.c(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f16362b.canApplyTheme();
    }

    public abstract void d(b bVar);

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f16365j;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f16366m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f16362b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f16362b.canConstantState()) {
            return null;
        }
        this.f16362b.f16338d = getChangingConfigurations();
        return this.f16362b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f16364f;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f16363e;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f16362b.isConstantSize()) {
            return this.f16362b.getConstantHeight();
        }
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f16362b.isConstantSize()) {
            return this.f16362b.getConstantWidth();
        }
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f16362b.isConstantSize()) {
            return this.f16362b.getConstantMinimumHeight();
        }
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f16362b.isConstantSize()) {
            return this.f16362b.getConstantMinimumWidth();
        }
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f16364f;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f16362b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            i.getOutline(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect constantPadding = this.f16362b.getConstantPadding();
        if (constantPadding != null) {
            rect.set(constantPadding);
            padding = (constantPadding.right | ((constantPadding.left | constantPadding.top) | constantPadding.bottom)) != 0;
        } else {
            Drawable drawable = this.f16364f;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (isAutoMirrored() && E.c.getLayoutDirection(this) == 1) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        b bVar = this.f16362b;
        if (bVar != null) {
            bVar.f16352r = false;
            bVar.f16354t = false;
        }
        if (drawable != this.f16364f || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f16362b.f16328A;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z6;
        Drawable drawable = this.f16365j;
        boolean z7 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f16365j = null;
            z6 = true;
        } else {
            z6 = false;
        }
        Drawable drawable2 = this.f16364f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f16367n) {
                this.f16364f.setAlpha(this.f16366m);
            }
        }
        if (this.f16372t != 0) {
            this.f16372t = 0L;
            z6 = true;
        }
        if (this.f16371s != 0) {
            this.f16371s = 0L;
        } else {
            z7 = z6;
        }
        if (z7) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f16369q && super.mutate() == this) {
            g gVar = (g) this;
            b bVar = new b(gVar.f16324y, gVar, null);
            bVar.f16313I = bVar.f16313I.clone();
            bVar.f16314J = bVar.f16314J.clone();
            d(bVar);
            this.f16369q = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f16365j;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f16364f;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        b bVar = this.f16362b;
        int i7 = this.f16368p;
        int i8 = bVar.f16342h;
        Drawable[] drawableArr = bVar.f16341g;
        boolean z6 = false;
        for (int i9 = 0; i9 < i8; i9++) {
            Drawable drawable = drawableArr[i9];
            if (drawable != null) {
                boolean layoutDirection = E.c.setLayoutDirection(drawable, i2);
                if (i9 == i7) {
                    z6 = layoutDirection;
                }
            }
        }
        bVar.f16358x = i2;
        return z6;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        Drawable drawable = this.f16365j;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.f16364f;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j7) {
        if (drawable != this.f16364f || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j7);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f16367n && this.f16366m == i2) {
            return;
        }
        this.f16367n = true;
        this.f16366m = i2;
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            if (this.f16371s == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z6) {
        b bVar = this.f16362b;
        if (bVar.f16328A != z6) {
            bVar.f16328A = z6;
            Drawable drawable = this.f16364f;
            if (drawable != null) {
                E.c.setAutoMirrored(drawable, z6);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        b bVar = this.f16362b;
        bVar.f16330C = true;
        if (bVar.f16329B != colorFilter) {
            bVar.f16329B = colorFilter;
            Drawable drawable = this.f16364f;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z6) {
        b bVar = this.f16362b;
        if (bVar.f16357w != z6) {
            bVar.f16357w = z6;
            Drawable drawable = this.f16364f;
            if (drawable != null) {
                drawable.setDither(z6);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f3, float f7) {
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            E.c.setHotspot(drawable, f3, f7);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i7, int i8, int i9) {
        Rect rect = this.f16363e;
        if (rect == null) {
            this.f16363e = new Rect(i2, i7, i8, i9);
        } else {
            rect.set(i2, i7, i8, i9);
        }
        Drawable drawable = this.f16364f;
        if (drawable != null) {
            E.c.setHotspotBounds(drawable, i2, i7, i8, i9);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        b bVar = this.f16362b;
        bVar.f16333F = true;
        if (bVar.f16331D != colorStateList) {
            bVar.f16331D = colorStateList;
            E.c.setTintList(this.f16364f, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.f16362b;
        bVar.f16334G = true;
        if (bVar.f16332E != mode) {
            bVar.f16332E = mode;
            E.c.setTintMode(this.f16364f, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z7) {
        boolean visible = super.setVisible(z6, z7);
        Drawable drawable = this.f16365j;
        if (drawable != null) {
            drawable.setVisible(z6, z7);
        }
        Drawable drawable2 = this.f16364f;
        if (drawable2 != null) {
            drawable2.setVisible(z6, z7);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f16364f || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
