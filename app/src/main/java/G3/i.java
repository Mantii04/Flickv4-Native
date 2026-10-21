package G3;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import u3.C1699a;

/* loaded from: classes2.dex */
public class i extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public p f1075a;

    /* renamed from: b, reason: collision with root package name */
    public C1699a f1076b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f1077c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f1078d;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f1079e;

    /* renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f1080f;

    /* renamed from: g, reason: collision with root package name */
    public Rect f1081g;

    /* renamed from: h, reason: collision with root package name */
    public final float f1082h;

    /* renamed from: i, reason: collision with root package name */
    public float f1083i;

    /* renamed from: j, reason: collision with root package name */
    public float f1084j;

    /* renamed from: k, reason: collision with root package name */
    public int f1085k;

    /* renamed from: l, reason: collision with root package name */
    public float f1086l;

    /* renamed from: m, reason: collision with root package name */
    public float f1087m;

    /* renamed from: n, reason: collision with root package name */
    public int f1088n;

    /* renamed from: o, reason: collision with root package name */
    public int f1089o;

    /* renamed from: p, reason: collision with root package name */
    public final Paint.Style f1090p;

    public i(p pVar, C1699a c1699a) {
        this.f1077c = null;
        this.f1078d = null;
        this.f1079e = null;
        this.f1080f = PorterDuff.Mode.SRC_IN;
        this.f1081g = null;
        this.f1082h = 1.0f;
        this.f1083i = 1.0f;
        this.f1085k = 255;
        this.f1086l = 0.0f;
        this.f1087m = 0.0f;
        this.f1088n = 0;
        this.f1089o = 0;
        this.f1090p = Paint.Style.FILL_AND_STROKE;
        this.f1075a = pVar;
        this.f1076b = c1699a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        j jVar = new j(this);
        jVar.f1102m = true;
        return jVar;
    }

    public i(i iVar) {
        this.f1077c = null;
        this.f1078d = null;
        this.f1079e = null;
        this.f1080f = PorterDuff.Mode.SRC_IN;
        this.f1081g = null;
        this.f1082h = 1.0f;
        this.f1083i = 1.0f;
        this.f1085k = 255;
        this.f1086l = 0.0f;
        this.f1087m = 0.0f;
        this.f1088n = 0;
        this.f1089o = 0;
        this.f1090p = Paint.Style.FILL_AND_STROKE;
        this.f1075a = iVar.f1075a;
        this.f1076b = iVar.f1076b;
        this.f1084j = iVar.f1084j;
        this.f1077c = iVar.f1077c;
        this.f1078d = iVar.f1078d;
        this.f1080f = iVar.f1080f;
        this.f1079e = iVar.f1079e;
        this.f1085k = iVar.f1085k;
        this.f1082h = iVar.f1082h;
        this.f1089o = iVar.f1089o;
        this.f1083i = iVar.f1083i;
        this.f1086l = iVar.f1086l;
        this.f1087m = iVar.f1087m;
        this.f1088n = iVar.f1088n;
        this.f1090p = iVar.f1090p;
        if (iVar.f1081g != null) {
            this.f1081g = new Rect(iVar.f1081g);
        }
    }
}
