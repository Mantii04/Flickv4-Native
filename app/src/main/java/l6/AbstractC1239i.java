package l6;

/* renamed from: l6.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1239i extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18179a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18180b;

    public AbstractC1239i(String str, String str2) {
        h6.k.notEmpty(str);
        h6.k.notEmpty(str2);
        this.f18179a = i6.b.normalize(str);
        if ((str2.startsWith("\"") && str2.endsWith("\"")) || (str2.startsWith("'") && str2.endsWith("'"))) {
            str2 = A.i.d(1, 1, str2);
        }
        this.f18180b = i6.b.normalize(str2);
    }
}
