package b2;

import T1.C0330i;
import Z1.k;
import Z1.l;
import a2.InterfaceC0381b;
import com.airbnb.lottie.model.layer.Layer$LayerType;
import com.airbnb.lottie.model.layer.Layer$MatteType;
import g2.C0947a;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* renamed from: b2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0645e {

    /* renamed from: a, reason: collision with root package name */
    public final List f8425a;

    /* renamed from: b, reason: collision with root package name */
    public final C0330i f8426b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8427c;

    /* renamed from: d, reason: collision with root package name */
    public final long f8428d;

    /* renamed from: e, reason: collision with root package name */
    public final Layer$LayerType f8429e;

    /* renamed from: f, reason: collision with root package name */
    public final long f8430f;

    /* renamed from: g, reason: collision with root package name */
    public final String f8431g;

    /* renamed from: h, reason: collision with root package name */
    public final List f8432h;

    /* renamed from: i, reason: collision with root package name */
    public final l f8433i;

    /* renamed from: j, reason: collision with root package name */
    public final int f8434j;

    /* renamed from: k, reason: collision with root package name */
    public final int f8435k;

    /* renamed from: l, reason: collision with root package name */
    public final int f8436l;

    /* renamed from: m, reason: collision with root package name */
    public final float f8437m;

    /* renamed from: n, reason: collision with root package name */
    public final float f8438n;

    /* renamed from: o, reason: collision with root package name */
    public final int f8439o;

    /* renamed from: p, reason: collision with root package name */
    public final int f8440p;

    /* renamed from: q, reason: collision with root package name */
    public final Z1.j f8441q;

    /* renamed from: r, reason: collision with root package name */
    public final k f8442r;

    /* renamed from: s, reason: collision with root package name */
    public final Z1.b f8443s;

    /* renamed from: t, reason: collision with root package name */
    public final List f8444t;

    /* renamed from: u, reason: collision with root package name */
    public final Layer$MatteType f8445u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f8446v;

    public C0645e(List<InterfaceC0381b> list, C0330i c0330i, String str, long j7, Layer$LayerType layer$LayerType, long j8, String str2, List<a2.f> list2, l lVar, int i2, int i7, int i8, float f3, float f7, int i9, int i10, Z1.j jVar, k kVar, List<C0947a> list3, Layer$MatteType layer$MatteType, Z1.b bVar, boolean z6) {
        this.f8425a = list;
        this.f8426b = c0330i;
        this.f8427c = str;
        this.f8428d = j7;
        this.f8429e = layer$LayerType;
        this.f8430f = j8;
        this.f8431g = str2;
        this.f8432h = list2;
        this.f8433i = lVar;
        this.f8434j = i2;
        this.f8435k = i7;
        this.f8436l = i8;
        this.f8437m = f3;
        this.f8438n = f7;
        this.f8439o = i9;
        this.f8440p = i10;
        this.f8441q = jVar;
        this.f8442r = kVar;
        this.f8444t = list3;
        this.f8445u = layer$MatteType;
        this.f8443s = bVar;
        this.f8446v = z6;
    }

    public long getId() {
        return this.f8428d;
    }

    public Layer$LayerType getLayerType() {
        return this.f8429e;
    }

    public boolean isHidden() {
        return this.f8446v;
    }

    public String toString(String str) {
        int i2;
        StringBuilder o6 = b.c.o(str);
        o6.append(this.f8427c);
        o6.append(StringUtils.LF);
        C0330i c0330i = this.f8426b;
        C0645e layerModelForId = c0330i.layerModelForId(this.f8430f);
        if (layerModelForId != null) {
            o6.append("\t\tParents: ");
            o6.append(layerModelForId.f8427c);
            for (C0645e layerModelForId2 = c0330i.layerModelForId(layerModelForId.f8430f); layerModelForId2 != null; layerModelForId2 = c0330i.layerModelForId(layerModelForId2.f8430f)) {
                o6.append("->");
                o6.append(layerModelForId2.f8427c);
            }
            o6.append(str);
            o6.append(StringUtils.LF);
        }
        List list = this.f8432h;
        if (!list.isEmpty()) {
            o6.append(str);
            o6.append("\tMasks: ");
            o6.append(list.size());
            o6.append(StringUtils.LF);
        }
        int i7 = this.f8434j;
        if (i7 != 0 && (i2 = this.f8435k) != 0) {
            o6.append(str);
            o6.append("\tBackground: ");
            o6.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i7), Integer.valueOf(i2), Integer.valueOf(this.f8436l)));
        }
        List list2 = this.f8425a;
        if (!list2.isEmpty()) {
            o6.append(str);
            o6.append("\tShapes:\n");
            for (Object obj : list2) {
                o6.append(str);
                o6.append("\t\t");
                o6.append(obj);
                o6.append(StringUtils.LF);
            }
        }
        return o6.toString();
    }

    public String toString() {
        return toString("");
    }
}
