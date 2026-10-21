package y1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: y1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1877h extends m implements Animatable {

    /* renamed from: e, reason: collision with root package name */
    public final C1875f f20983e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f20984f;

    /* renamed from: j, reason: collision with root package name */
    public C1874e f20985j = null;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f20986m = null;

    /* renamed from: n, reason: collision with root package name */
    public final C1873d f20987n;

    public C1877h(Context context) {
        C1873d c1873d = new C1873d(this);
        this.f20987n = c1873d;
        this.f20984f = context;
        this.f20983e = new C1875f(context, null, c1873d, null);
    }

    public static C1877h create(Context context, int i2) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C1877h c1877h = new C1877h(context);
            Drawable drawable = C.u.getDrawable(context.getResources(), i2, context.getTheme());
            c1877h.f20990b = drawable;
            drawable.setCallback(c1877h.f20987n);
            new C1876g(c1877h.f20990b.getConstantState());
            return c1877h;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return createFromXmlInner(context, context.getResources(), xml, asAttributeSet, context.getTheme());
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e3) {
            Log.e("AnimatedVDCompat", "parser error", e3);
            return null;
        } catch (XmlPullParserException e7) {
            Log.e("AnimatedVDCompat", "parser error", e7);
            return null;
        }
    }

    public static C1877h createFromXmlInner(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C1877h c1877h = new C1877h(context);
        c1877h.inflate(resources, xmlPullParser, attributeSet, theme);
        return c1877h;
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.applyTheme(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            return E.c.canApplyTheme(drawable);
        }
        return false;
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        C1875f c1875f = this.f20983e;
        c1875f.f20978a.draw(canvas);
        if (c1875f.f20979b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f20990b;
        return drawable != null ? E.c.getAlpha(drawable) : this.f20983e.f20978a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f20983e.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f20990b;
        return drawable != null ? E.c.getColorFilter(drawable) : this.f20983e.f20978a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f20990b == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C1876g(this.f20990b.getConstantState());
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f20983e.f20978a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f20983e.f20978a.getIntrinsicWidth();
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.getOpacity() : this.f20983e.f20978a.getOpacity();
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00b4, code lost:
    
        r3.setupAnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b7, code lost:
    
        return;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void inflate(android.content.res.Resources r8, org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, android.content.res.Resources.Theme r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r7 = this;
            android.graphics.drawable.Drawable r0 = r7.f20990b
            if (r0 == 0) goto L8
            E.c.inflate(r0, r8, r9, r10, r11)
            return
        L8:
            int r0 = r9.getEventType()
            int r1 = r9.getDepth()
            r2 = 1
            int r1 = r1 + r2
        L12:
            y1.f r3 = r7.f20983e
            if (r0 == r2) goto Lb4
            int r4 = r9.getDepth()
            if (r4 >= r1) goto L1f
            r4 = 3
            if (r0 == r4) goto Lb4
        L1f:
            r4 = 2
            if (r0 != r4) goto Lae
            java.lang.String r0 = r9.getName()
            java.lang.String r4 = "animated-vector"
            boolean r4 = r4.equals(r0)
            r5 = 0
            if (r4 == 0) goto L54
            int[] r0 = y1.AbstractC1870a.f20967e
            android.content.res.TypedArray r0 = C.v.obtainAttributes(r8, r11, r10, r0)
            int r4 = r0.getResourceId(r5, r5)
            if (r4 == 0) goto L50
            y1.v r4 = y1.v.create(r8, r4, r11)
            r4.f21050n = r5
            y1.d r5 = r7.f20987n
            r4.setCallback(r5)
            y1.v r5 = r3.f20978a
            if (r5 == 0) goto L4e
            r6 = 0
            r5.setCallback(r6)
        L4e:
            r3.f20978a = r4
        L50:
            r0.recycle()
            goto Lae
        L54:
            java.lang.String r4 = "target"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto Lae
            int[] r0 = y1.AbstractC1870a.f20968f
            android.content.res.TypedArray r0 = r8.obtainAttributes(r10, r0)
            java.lang.String r4 = r0.getString(r5)
            int r5 = r0.getResourceId(r2, r5)
            if (r5 == 0) goto Lab
            android.content.Context r6 = r7.f20984f
            if (r6 == 0) goto La0
            android.animation.Animator r5 = y1.k.loadAnimator(r6, r5)
            y1.v r6 = r3.f20978a
            y1.t r6 = r6.f21046e
            y1.s r6 = r6.f21033b
            p.g r6 = r6.f21031o
            java.lang.Object r6 = r6.get(r4)
            r5.setTarget(r6)
            java.util.ArrayList r6 = r3.f20980c
            if (r6 != 0) goto L95
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r3.f20980c = r6
            p.g r6 = new p.g
            r6.<init>()
            r3.f20981d = r6
        L95:
            java.util.ArrayList r6 = r3.f20980c
            r6.add(r5)
            p.g r3 = r3.f20981d
            r3.put(r5, r4)
            goto Lab
        La0:
            r0.recycle()
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Context can't be null when inflating animators"
            r8.<init>(r9)
            throw r8
        Lab:
            r0.recycle()
        Lae:
            int r0 = r9.next()
            goto L12
        Lb4:
            r3.setupAnimatorSet()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: y1.C1877h.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f20990b;
        return drawable != null ? E.c.isAutoMirrored(drawable) : this.f20983e.f20978a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f20990b;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f20983e.f20979b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.isStateful() : this.f20983e.f20978a.isStateful();
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f20983e.f20978a.setBounds(rect);
        }
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.setLevel(i2) : this.f20983e.f20978a.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.setState(iArr) : this.f20983e.f20978a.setState(iArr);
    }

    public void registerAnimationCallback(AbstractC1872c abstractC1872c) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
            if (abstractC1872c.f20975a == null) {
                abstractC1872c.f20975a = new C1871b(abstractC1872c);
            }
            animatedVectorDrawable.registerAnimationCallback(abstractC1872c.f20975a);
            return;
        }
        if (abstractC1872c == null) {
            return;
        }
        if (this.f20986m == null) {
            this.f20986m = new ArrayList();
        }
        if (this.f20986m.contains(abstractC1872c)) {
            return;
        }
        this.f20986m.add(abstractC1872c);
        if (this.f20985j == null) {
            this.f20985j = new C1874e(this);
        }
        this.f20983e.f20979b.addListener(this.f20985j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else {
            this.f20983e.f20978a.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z6) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.setAutoMirrored(drawable, z6);
        } else {
            this.f20983e.f20978a.setAutoMirrored(z6);
        }
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i2) {
        super.setChangingConfigurations(i2);
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i2, PorterDuff.Mode mode) {
        super.setColorFilter(i2, mode);
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z6) {
        super.setFilterBitmap(z6);
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f3, float f7) {
        super.setHotspot(f3, f7);
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i2, int i7, int i8, int i9) {
        super.setHotspotBounds(i2, i7, i8, i9);
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i2) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.setTint(drawable, i2);
        } else {
            this.f20983e.f20978a.setTint(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.setTintList(drawable, colorStateList);
        } else {
            this.f20983e.f20978a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.setTintMode(drawable, mode);
        } else {
            this.f20983e.f20978a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z7) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            return drawable.setVisible(z6, z7);
        }
        this.f20983e.f20978a.setVisible(z6, z7);
        return super.setVisible(z6, z7);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        C1875f c1875f = this.f20983e;
        if (c1875f.f20979b.isStarted()) {
            return;
        }
        c1875f.f20979b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f20983e.f20979b.end();
        }
    }

    public boolean unregisterAnimationCallback(AbstractC1872c abstractC1872c) {
        C1874e c1874e;
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
            if (abstractC1872c.f20975a == null) {
                abstractC1872c.f20975a = new C1871b(abstractC1872c);
            }
            animatedVectorDrawable.unregisterAnimationCallback(abstractC1872c.f20975a);
        }
        ArrayList arrayList = this.f20986m;
        if (arrayList == null || abstractC1872c == null) {
            return false;
        }
        boolean remove = arrayList.remove(abstractC1872c);
        if (this.f20986m.size() == 0 && (c1874e = this.f20985j) != null) {
            this.f20983e.f20979b.removeListener(c1874e);
            this.f20985j = null;
        }
        return remove;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f20983e.f20978a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
