package Y1;

import a2.m;
import java.util.List;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final List f4353a;

    /* renamed from: b, reason: collision with root package name */
    public final char f4354b;

    /* renamed from: c, reason: collision with root package name */
    public final double f4355c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4356d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4357e;

    public d(List<m> list, char c7, double d7, double d8, String str, String str2) {
        this.f4353a = list;
        this.f4354b = c7;
        this.f4355c = d8;
        this.f4356d = str;
        this.f4357e = str2;
    }

    public static int hashFor(char c7, String str, String str2) {
        return str2.hashCode() + A.i.b(c7 * 31, 31, str);
    }

    public List<m> getShapes() {
        return this.f4353a;
    }

    public double getWidth() {
        return this.f4355c;
    }

    public int hashCode() {
        return hashFor(this.f4354b, this.f4357e, this.f4356d);
    }
}
