package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;

/* loaded from: classes.dex */
public abstract class k extends Drawable.ConstantState {

    /* renamed from: A, reason: collision with root package name */
    public boolean f16328A;

    /* renamed from: B, reason: collision with root package name */
    public ColorFilter f16329B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f16330C;

    /* renamed from: D, reason: collision with root package name */
    public ColorStateList f16331D;

    /* renamed from: E, reason: collision with root package name */
    public PorterDuff.Mode f16332E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f16333F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f16334G;

    /* renamed from: a, reason: collision with root package name */
    public final g f16335a;

    /* renamed from: b, reason: collision with root package name */
    public Resources f16336b;

    /* renamed from: c, reason: collision with root package name */
    public int f16337c;

    /* renamed from: d, reason: collision with root package name */
    public int f16338d;

    /* renamed from: e, reason: collision with root package name */
    public int f16339e;

    /* renamed from: f, reason: collision with root package name */
    public SparseArray f16340f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable[] f16341g;

    /* renamed from: h, reason: collision with root package name */
    public int f16342h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f16343i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16344j;

    /* renamed from: k, reason: collision with root package name */
    public Rect f16345k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f16346l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f16347m;

    /* renamed from: n, reason: collision with root package name */
    public int f16348n;

    /* renamed from: o, reason: collision with root package name */
    public int f16349o;

    /* renamed from: p, reason: collision with root package name */
    public int f16350p;

    /* renamed from: q, reason: collision with root package name */
    public int f16351q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f16352r;

    /* renamed from: s, reason: collision with root package name */
    public int f16353s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f16354t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f16355u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f16356v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f16357w;

    /* renamed from: x, reason: collision with root package name */
    public int f16358x;

    /* renamed from: y, reason: collision with root package name */
    public int f16359y;

    /* renamed from: z, reason: collision with root package name */
    public int f16360z;

    public k(b bVar, g gVar, Resources resources) {
        this.f16343i = false;
        this.f16346l = false;
        this.f16357w = true;
        this.f16359y = 0;
        this.f16360z = 0;
        this.f16335a = gVar;
        this.f16336b = resources != null ? resources : bVar != null ? bVar.f16336b : null;
        int i2 = bVar != null ? bVar.f16337c : 0;
        int i7 = l.f16361v;
        i2 = resources != null ? resources.getDisplayMetrics().densityDpi : i2;
        i2 = i2 == 0 ? 160 : i2;
        this.f16337c = i2;
        if (bVar == null) {
            this.f16341g = new Drawable[10];
            this.f16342h = 0;
            return;
        }
        this.f16338d = bVar.f16338d;
        this.f16339e = bVar.f16339e;
        this.f16355u = true;
        this.f16356v = true;
        this.f16343i = bVar.f16343i;
        this.f16346l = bVar.f16346l;
        this.f16357w = bVar.f16357w;
        this.f16358x = bVar.f16358x;
        this.f16359y = bVar.f16359y;
        this.f16360z = bVar.f16360z;
        this.f16328A = bVar.f16328A;
        this.f16329B = bVar.f16329B;
        this.f16330C = bVar.f16330C;
        this.f16331D = bVar.f16331D;
        this.f16332E = bVar.f16332E;
        this.f16333F = bVar.f16333F;
        this.f16334G = bVar.f16334G;
        if (bVar.f16337c == i2) {
            if (bVar.f16344j) {
                this.f16345k = bVar.f16345k != null ? new Rect(bVar.f16345k) : null;
                this.f16344j = true;
            }
            if (bVar.f16347m) {
                this.f16348n = bVar.f16348n;
                this.f16349o = bVar.f16349o;
                this.f16350p = bVar.f16350p;
                this.f16351q = bVar.f16351q;
                this.f16347m = true;
            }
        }
        if (bVar.f16352r) {
            this.f16353s = bVar.f16353s;
            this.f16352r = true;
        }
        if (bVar.f16354t) {
            this.f16354t = true;
        }
        Drawable[] drawableArr = bVar.f16341g;
        this.f16341g = new Drawable[drawableArr.length];
        this.f16342h = bVar.f16342h;
        SparseArray sparseArray = bVar.f16340f;
        if (sparseArray != null) {
            this.f16340f = sparseArray.clone();
        } else {
            this.f16340f = new SparseArray(this.f16342h);
        }
        int i8 = this.f16342h;
        for (int i9 = 0; i9 < i8; i9++) {
            Drawable drawable = drawableArr[i9];
            if (drawable != null) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    this.f16340f.put(i9, constantState);
                } else {
                    this.f16341g[i9] = drawableArr[i9];
                }
            }
        }
    }

    public final void a() {
        SparseArray sparseArray = this.f16340f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                int keyAt = this.f16340f.keyAt(i2);
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f16340f.valueAt(i2);
                Drawable[] drawableArr = this.f16341g;
                Drawable newDrawable = constantState.newDrawable(this.f16336b);
                E.c.setLayoutDirection(newDrawable, this.f16358x);
                Drawable mutate = newDrawable.mutate();
                mutate.setCallback(this.f16335a);
                drawableArr[keyAt] = mutate;
            }
            this.f16340f = null;
        }
    }

    public final int addChild(Drawable drawable) {
        int i2 = this.f16342h;
        if (i2 >= this.f16341g.length) {
            growArray(i2, i2 + 10);
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.f16335a);
        this.f16341g[i2] = drawable;
        this.f16342h++;
        this.f16339e = drawable.getChangingConfigurations() | this.f16339e;
        this.f16352r = false;
        this.f16354t = false;
        this.f16345k = null;
        this.f16344j = false;
        this.f16347m = false;
        this.f16355u = false;
        return i2;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        int i2 = this.f16342h;
        Drawable[] drawableArr = this.f16341g;
        for (int i7 = 0; i7 < i2; i7++) {
            Drawable drawable = drawableArr[i7];
            if (drawable == null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f16340f.get(i7);
                if (constantState != null && i.canApplyTheme(constantState)) {
                    return true;
                }
            } else if (E.c.canApplyTheme(drawable)) {
                return true;
            }
        }
        return false;
    }

    public boolean canConstantState() {
        if (this.f16355u) {
            return this.f16356v;
        }
        a();
        this.f16355u = true;
        int i2 = this.f16342h;
        Drawable[] drawableArr = this.f16341g;
        for (int i7 = 0; i7 < i2; i7++) {
            if (drawableArr[i7].getConstantState() == null) {
                this.f16356v = false;
                return false;
            }
        }
        this.f16356v = true;
        return true;
    }

    public void computeConstantSize() {
        this.f16347m = true;
        a();
        int i2 = this.f16342h;
        Drawable[] drawableArr = this.f16341g;
        this.f16349o = -1;
        this.f16348n = -1;
        this.f16351q = 0;
        this.f16350p = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            Drawable drawable = drawableArr[i7];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.f16348n) {
                this.f16348n = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.f16349o) {
                this.f16349o = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.f16350p) {
                this.f16350p = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.f16351q) {
                this.f16351q = minimumHeight;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f16338d | this.f16339e;
    }

    public final Drawable getChild(int i2) {
        int indexOfKey;
        Drawable drawable = this.f16341g[i2];
        if (drawable != null) {
            return drawable;
        }
        SparseArray sparseArray = this.f16340f;
        if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i2)) < 0) {
            return null;
        }
        Drawable newDrawable = ((Drawable.ConstantState) this.f16340f.valueAt(indexOfKey)).newDrawable(this.f16336b);
        E.c.setLayoutDirection(newDrawable, this.f16358x);
        Drawable mutate = newDrawable.mutate();
        mutate.setCallback(this.f16335a);
        this.f16341g[i2] = mutate;
        this.f16340f.removeAt(indexOfKey);
        if (this.f16340f.size() == 0) {
            this.f16340f = null;
        }
        return mutate;
    }

    public final int getChildCount() {
        return this.f16342h;
    }

    public final int getConstantHeight() {
        if (!this.f16347m) {
            computeConstantSize();
        }
        return this.f16349o;
    }

    public final int getConstantMinimumHeight() {
        if (!this.f16347m) {
            computeConstantSize();
        }
        return this.f16351q;
    }

    public final int getConstantMinimumWidth() {
        if (!this.f16347m) {
            computeConstantSize();
        }
        return this.f16350p;
    }

    public final Rect getConstantPadding() {
        Rect rect = null;
        if (this.f16343i) {
            return null;
        }
        Rect rect2 = this.f16345k;
        if (rect2 != null || this.f16344j) {
            return rect2;
        }
        a();
        Rect rect3 = new Rect();
        int i2 = this.f16342h;
        Drawable[] drawableArr = this.f16341g;
        for (int i7 = 0; i7 < i2; i7++) {
            if (drawableArr[i7].getPadding(rect3)) {
                if (rect == null) {
                    rect = new Rect(0, 0, 0, 0);
                }
                int i8 = rect3.left;
                if (i8 > rect.left) {
                    rect.left = i8;
                }
                int i9 = rect3.top;
                if (i9 > rect.top) {
                    rect.top = i9;
                }
                int i10 = rect3.right;
                if (i10 > rect.right) {
                    rect.right = i10;
                }
                int i11 = rect3.bottom;
                if (i11 > rect.bottom) {
                    rect.bottom = i11;
                }
            }
        }
        this.f16344j = true;
        this.f16345k = rect;
        return rect;
    }

    public final int getConstantWidth() {
        if (!this.f16347m) {
            computeConstantSize();
        }
        return this.f16348n;
    }

    public final int getOpacity() {
        if (this.f16352r) {
            return this.f16353s;
        }
        a();
        int i2 = this.f16342h;
        Drawable[] drawableArr = this.f16341g;
        int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
        for (int i7 = 1; i7 < i2; i7++) {
            opacity = Drawable.resolveOpacity(opacity, drawableArr[i7].getOpacity());
        }
        this.f16353s = opacity;
        this.f16352r = true;
        return opacity;
    }

    public void growArray(int i2, int i7) {
        Drawable[] drawableArr = new Drawable[i7];
        Drawable[] drawableArr2 = this.f16341g;
        if (drawableArr2 != null) {
            System.arraycopy(drawableArr2, 0, drawableArr, 0, i2);
        }
        this.f16341g = drawableArr;
    }

    public final boolean isConstantSize() {
        return this.f16346l;
    }

    public final void setConstantSize(boolean z6) {
        this.f16346l = z6;
    }

    public final void setEnterFadeDuration(int i2) {
        this.f16359y = i2;
    }

    public final void setExitFadeDuration(int i2) {
        this.f16360z = i2;
    }

    public final void setVariablePadding(boolean z6) {
        this.f16343i = z6;
    }
}
