package kotlinx.coroutines;

import H5.p;
import kotlin.NoWhenBranchMatchedException;
import y5.AbstractC1948g;
import y5.InterfaceC1944c;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class CoroutineStart {

    /* renamed from: b, reason: collision with root package name */
    public static final CoroutineStart f17480b;

    /* renamed from: e, reason: collision with root package name */
    public static final CoroutineStart f17481e;

    /* renamed from: f, reason: collision with root package name */
    public static final CoroutineStart f17482f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ CoroutineStart[] f17483j;

    static {
        CoroutineStart coroutineStart = new CoroutineStart("DEFAULT", 0);
        f17480b = coroutineStart;
        CoroutineStart coroutineStart2 = new CoroutineStart("LAZY", 1);
        f17481e = coroutineStart2;
        CoroutineStart coroutineStart3 = new CoroutineStart("ATOMIC", 2);
        f17482f = coroutineStart3;
        f17483j = new CoroutineStart[]{coroutineStart, coroutineStart2, coroutineStart3, new CoroutineStart("UNDISPATCHED", 3)};
    }

    public static CoroutineStart valueOf(String str) {
        return (CoroutineStart) Enum.valueOf(CoroutineStart.class, str);
    }

    public static CoroutineStart[] values() {
        return (CoroutineStart[]) f17483j.clone();
    }

    public final <R, T> void invoke(p pVar, R r6, InterfaceC1944c interfaceC1944c) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            X5.a.startCoroutineCancellable$default(pVar, r6, interfaceC1944c, null, 4, null);
            return;
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                AbstractC1948g.startCoroutine(pVar, r6, interfaceC1944c);
            } else {
                if (ordinal != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                X5.b.startCoroutineUndispatched(pVar, r6, interfaceC1944c);
            }
        }
    }

    public final boolean isLazy() {
        return this == f17481e;
    }
}
