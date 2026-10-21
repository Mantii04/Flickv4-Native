package L5;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class a extends K5.a {
    @Override // K5.a
    public Random getImpl() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        j.checkNotNullExpressionValue(current, "current(...)");
        return current;
    }
}
