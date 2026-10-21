package y1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class v extends m {

    /* renamed from: s, reason: collision with root package name */
    public static final PorterDuff.Mode f21045s = PorterDuff.Mode.SRC_IN;

    /* renamed from: e, reason: collision with root package name */
    public t f21046e;

    /* renamed from: f, reason: collision with root package name */
    public PorterDuffColorFilter f21047f;

    /* renamed from: j, reason: collision with root package name */
    public ColorFilter f21048j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f21049m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f21050n;

    /* renamed from: p, reason: collision with root package name */
    public final float[] f21051p;

    /* renamed from: q, reason: collision with root package name */
    public final Matrix f21052q;

    /* renamed from: r, reason: collision with root package name */
    public final Rect f21053r;

    public v() {
        this.f21050n = true;
        this.f21051p = new float[9];
        this.f21052q = new Matrix();
        this.f21053r = new Rect();
        this.f21046e = new t();
    }

    public static v create(Resources resources, int i2, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            v vVar = new v();
            vVar.f20990b = C.u.getDrawable(resources, i2, theme);
            new u(vVar.f20990b.getConstantState());
            return vVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return createFromXmlInner(resources, (XmlPullParser) xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        } catch (XmlPullParserException e7) {
            Log.e("VectorDrawableCompat", "parser error", e7);
            return null;
        }
    }

    public static v createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        v vVar = new v();
        vVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return vVar;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f20990b;
        if (drawable == null) {
            return false;
        }
        E.c.canApplyTheme(drawable);
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
        Rect rect = this.f21053r;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f21048j;
        if (colorFilter == null) {
            colorFilter = this.f21047f;
        }
        Matrix matrix = this.f21052q;
        canvas.getMatrix(matrix);
        float[] fArr = this.f21051p;
        matrix.getValues(fArr);
        float abs = Math.abs(fArr[0]);
        float abs2 = Math.abs(fArr[4]);
        float abs3 = Math.abs(fArr[1]);
        float abs4 = Math.abs(fArr[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int width = (int) (rect.width() * abs);
        int min = Math.min(2048, width);
        int min2 = Math.min(2048, (int) (rect.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && E.c.getLayoutDirection(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        this.f21046e.createCachedBitmapIfNeeded(min, min2);
        if (!this.f21050n) {
            this.f21046e.updateCachedBitmap(min, min2);
        } else if (!this.f21046e.canReuseCache()) {
            this.f21046e.updateCachedBitmap(min, min2);
            this.f21046e.updateCacheStates();
        }
        this.f21046e.drawCachedBitmapWithRootAlpha(canvas, colorFilter, rect);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f20990b;
        return drawable != null ? E.c.getAlpha(drawable) : this.f21046e.f21033b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f21046e.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f20990b;
        return drawable != null ? E.c.getColorFilter(drawable) : this.f21048j;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f20990b != null && Build.VERSION.SDK_INT >= 24) {
            return new u(this.f20990b.getConstantState());
        }
        this.f21046e.f21032a = getChangingConfigurations();
        return this.f21046e;
    }

    @Override // y1.m, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f21046e.f21033b.f21025i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f21046e.f21033b.f21024h;
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
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
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

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f20990b;
        return drawable != null ? E.c.isAutoMirrored(drawable) : this.f21046e.f21036e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        t tVar = this.f21046e;
        if (tVar == null) {
            return false;
        }
        if (tVar.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f21046e.f21034c;
        return colorStateList != null && colorStateList.isStateful();
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
            return this;
        }
        if (!this.f21049m && super.mutate() == this) {
            this.f21046e = new t(this.f21046e);
            this.f21049m = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z6;
        PorterDuff.Mode mode;
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        t tVar = this.f21046e;
        ColorStateList colorStateList = tVar.f21034c;
        if (colorStateList == null || (mode = tVar.f21035d) == null) {
            z6 = false;
        } else {
            this.f21047f = a(colorStateList, mode);
            invalidateSelf();
            z6 = true;
        }
        if (!tVar.isStateful() || !tVar.onStateChanged(iArr)) {
            return z6;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j7) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j7);
        } else {
            super.scheduleSelf(runnable, j7);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f21046e.f21033b.getRootAlpha() != i2) {
            this.f21046e.f21033b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z6) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.setAutoMirrored(drawable, z6);
        } else {
            this.f21046e.f21036e = z6;
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
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.setTintList(drawable, colorStateList);
            return;
        }
        t tVar = this.f21046e;
        if (tVar.f21034c != colorStateList) {
            tVar.f21034c = colorStateList;
            this.f21047f = a(colorStateList, tVar.f21035d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.setTintMode(drawable, mode);
            return;
        }
        t tVar = this.f21046e;
        if (tVar.f21035d != mode) {
            tVar.f21035d = mode;
            this.f21047f = a(tVar.f21034c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z7) {
        Drawable drawable = this.f20990b;
        return drawable != null ? drawable.setVisible(z6, z7) : super.setVisible(z6, z7);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f21048j = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i2;
        Drawable drawable = this.f20990b;
        if (drawable != null) {
            E.c.inflate(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        t tVar = this.f21046e;
        tVar.f21033b = new s();
        TypedArray obtainAttributes = C.v.obtainAttributes(resources, theme, attributeSet, AbstractC1870a.f20963a);
        t tVar2 = this.f21046e;
        s sVar = tVar2.f21033b;
        int namedInt = C.v.getNamedInt(obtainAttributes, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i7 = 3;
        if (namedInt == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (namedInt != 5) {
            if (namedInt != 9) {
                switch (namedInt) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        tVar2.f21035d = mode;
        ColorStateList namedColorStateList = C.v.getNamedColorStateList(obtainAttributes, xmlPullParser, theme, "tint", 1);
        if (namedColorStateList != null) {
            tVar2.f21034c = namedColorStateList;
        }
        tVar2.f21036e = C.v.getNamedBoolean(obtainAttributes, xmlPullParser, "autoMirrored", 5, tVar2.f21036e);
        sVar.f21026j = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "viewportWidth", 7, sVar.f21026j);
        float namedFloat = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "viewportHeight", 8, sVar.f21027k);
        sVar.f21027k = namedFloat;
        if (sVar.f21026j <= 0.0f) {
            throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (namedFloat > 0.0f) {
            sVar.f21024h = obtainAttributes.getDimension(3, sVar.f21024h);
            int i8 = 2;
            float dimension = obtainAttributes.getDimension(2, sVar.f21025i);
            sVar.f21025i = dimension;
            if (sVar.f21024h <= 0.0f) {
                throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                sVar.setAlpha(C.v.getNamedFloat(obtainAttributes, xmlPullParser, "alpha", 4, sVar.getAlpha()));
                String string = obtainAttributes.getString(0);
                if (string != null) {
                    sVar.f21029m = string;
                    sVar.f21031o.put(string, sVar);
                }
                obtainAttributes.recycle();
                tVar.f21032a = getChangingConfigurations();
                tVar.f21042k = true;
                t tVar3 = this.f21046e;
                s sVar2 = tVar3.f21033b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(sVar2.f21023g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z6 = true;
                for (int i9 = 1; eventType != i9 && (xmlPullParser.getDepth() >= depth || eventType != i7); i9 = 1) {
                    if (eventType == i8) {
                        String name = xmlPullParser.getName();
                        p pVar = (p) arrayDeque.peek();
                        boolean equals = ClientCookie.PATH_ATTR.equals(name);
                        p.g gVar = sVar2.f21031o;
                        if (equals) {
                            o oVar = new o();
                            oVar.f20992e = 0.0f;
                            oVar.f20994g = 1.0f;
                            oVar.f20995h = 1.0f;
                            oVar.f20996i = 0.0f;
                            oVar.f20997j = 1.0f;
                            oVar.f20998k = 0.0f;
                            oVar.f20999l = Paint.Cap.BUTT;
                            oVar.f21000m = Paint.Join.MITER;
                            oVar.f21001n = 4.0f;
                            oVar.inflate(resources, attributeSet, theme, xmlPullParser);
                            pVar.f21003b.add(oVar);
                            if (oVar.getPathName() != null) {
                                gVar.put(oVar.getPathName(), oVar);
                            }
                            tVar3.f21032a = tVar3.f21032a;
                            z6 = false;
                        } else if ("clip-path".equals(name)) {
                            n nVar = new n();
                            nVar.inflate(resources, attributeSet, theme, xmlPullParser);
                            pVar.f21003b.add(nVar);
                            if (nVar.getPathName() != null) {
                                gVar.put(nVar.getPathName(), nVar);
                            }
                            tVar3.f21032a = tVar3.f21032a;
                        } else if ("group".equals(name)) {
                            p pVar2 = new p();
                            pVar2.inflate(resources, attributeSet, theme, xmlPullParser);
                            pVar.f21003b.add(pVar2);
                            arrayDeque.push(pVar2);
                            if (pVar2.getGroupName() != null) {
                                gVar.put(pVar2.getGroupName(), pVar2);
                            }
                            tVar3.f21032a = tVar3.f21032a;
                        }
                        i2 = 3;
                    } else {
                        i2 = i7;
                        if (eventType == i2 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i7 = i2;
                    i8 = 2;
                }
                if (!z6) {
                    this.f21047f = a(tVar.f21034c, tVar.f21035d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public v(t tVar) {
        this.f21050n = true;
        this.f21051p = new float[9];
        this.f21052q = new Matrix();
        this.f21053r = new Rect();
        this.f21046e = tVar;
        this.f21047f = a(tVar.f21034c, tVar.f21035d);
    }
}
