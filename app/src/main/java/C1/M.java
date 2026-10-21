package C1;

import B1.C0023c;
import B1.Q;
import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.List;

/* loaded from: classes.dex */
public final class M {

    /* renamed from: a, reason: collision with root package name */
    public final Context f396a;

    /* renamed from: b, reason: collision with root package name */
    public final J1.a f397b;

    /* renamed from: c, reason: collision with root package name */
    public final N1.c f398c;

    /* renamed from: d, reason: collision with root package name */
    public final C0023c f399d;

    /* renamed from: e, reason: collision with root package name */
    public final WorkDatabase f400e;

    /* renamed from: f, reason: collision with root package name */
    public final K1.E f401f;

    /* renamed from: g, reason: collision with root package name */
    public List f402g;

    /* renamed from: h, reason: collision with root package name */
    public final List f403h;

    /* renamed from: i, reason: collision with root package name */
    public Q f404i = new Q();

    public M(Context context, C0023c c0023c, N1.c cVar, J1.a aVar, WorkDatabase workDatabase, K1.E e3, List<String> list) {
        this.f396a = context.getApplicationContext();
        this.f398c = cVar;
        this.f397b = aVar;
        this.f399d = c0023c;
        this.f400e = workDatabase;
        this.f401f = e3;
        this.f403h = list;
    }

    public N build() {
        return new N(this);
    }

    public M withRuntimeExtras(Q q6) {
        if (q6 != null) {
            this.f404i = q6;
        }
        return this;
    }

    public M withSchedulers(List<t> list) {
        this.f402g = list;
        return this;
    }
}
