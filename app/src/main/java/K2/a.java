package K2;

import N2.q;
import O2.b;
import O2.d;
import O2.f;
import O2.h;
import O2.j;
import O2.l;
import O2.m;
import O2.n;
import O2.o;
import O2.p;
import O2.r;
import O2.t;
import O2.v;
import O2.x;
import com.github.ybq.android.spinkit.Style;

/* loaded from: classes.dex */
public abstract class a {
    public static q create(Style style) {
        switch (style.ordinal()) {
            case 0:
                return new r();
            case 1:
                return new h();
            case 2:
                return new x();
            case 3:
                return new v();
            case 4:
                return new o();
            case 5:
                return new b();
            case 6:
                return new t();
            case 7:
                return new d();
            case 8:
                return new f();
            case 9:
                return new j();
            case 10:
                return new l();
            case 11:
                return new O2.q();
            case 12:
                return new m();
            case 13:
                return new p();
            case 14:
                return new n();
            default:
                return null;
        }
    }
}
