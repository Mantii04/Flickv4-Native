package kotlin.random;

import K5.d;
import java.io.Serializable;
import kotlin.jvm.internal.g;

/* loaded from: classes2.dex */
public final class Random$Default extends d implements Serializable {
    public /* synthetic */ Random$Default(g gVar) {
        this();
    }

    @Override // K5.d
    public int nextInt() {
        d dVar;
        dVar = d.f1819e;
        return dVar.nextInt();
    }

    private Random$Default() {
    }

    @Override // K5.d
    public int nextInt(int i2) {
        d dVar;
        dVar = d.f1819e;
        return dVar.nextInt(i2);
    }
}
