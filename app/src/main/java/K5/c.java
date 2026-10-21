package K5;

import java.util.Random;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class c extends a {

    /* renamed from: f, reason: collision with root package name */
    public final b f1817f = new b();

    @Override // K5.a
    public Random getImpl() {
        Object obj = this.f1817f.get();
        j.checkNotNullExpressionValue(obj, "get(...)");
        return (Random) obj;
    }
}
