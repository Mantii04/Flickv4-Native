package K1;

/* renamed from: K1.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0126q {
    public static final C0119j systemIdInfo(r generationalId, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(generationalId, "generationalId");
        return new C0119j(generationalId.getWorkSpecId(), generationalId.getGeneration(), i2);
    }
}
