package W1;

import android.graphics.Path;
import g2.C0947a;
import java.util.List;

/* loaded from: classes.dex */
public final class q extends f {

    /* renamed from: i, reason: collision with root package name */
    public final a2.k f4141i;

    /* renamed from: j, reason: collision with root package name */
    public final Path f4142j;

    public q(List<C0947a> list) {
        super(list);
        this.f4141i = new a2.k();
        this.f4142j = new Path();
    }

    @Override // W1.f
    public Path getValue(C0947a c0947a, float f3) {
        a2.k kVar = (a2.k) c0947a.f16441b;
        a2.k kVar2 = (a2.k) c0947a.f16442c;
        a2.k kVar3 = this.f4141i;
        kVar3.interpolateBetween(kVar, kVar2, f3);
        Path path = this.f4142j;
        f2.g.getPathFromData(kVar3, path);
        return path;
    }
}
