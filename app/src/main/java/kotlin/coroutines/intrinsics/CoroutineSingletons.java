package kotlin.coroutines.intrinsics;

import kotlin.enums.a;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class CoroutineSingletons {

    /* renamed from: b, reason: collision with root package name */
    public static final CoroutineSingletons f17434b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ CoroutineSingletons[] f17435e;

    static {
        CoroutineSingletons coroutineSingletons = new CoroutineSingletons("COROUTINE_SUSPENDED", 0);
        f17434b = coroutineSingletons;
        CoroutineSingletons[] coroutineSingletonsArr = {coroutineSingletons, new CoroutineSingletons("UNDECIDED", 1), new CoroutineSingletons("RESUMED", 2)};
        f17435e = coroutineSingletonsArr;
        a.enumEntries(coroutineSingletonsArr);
    }

    public static CoroutineSingletons valueOf(String str) {
        return (CoroutineSingletons) Enum.valueOf(CoroutineSingletons.class, str);
    }

    public static CoroutineSingletons[] values() {
        return (CoroutineSingletons[]) f17435e.clone();
    }
}
