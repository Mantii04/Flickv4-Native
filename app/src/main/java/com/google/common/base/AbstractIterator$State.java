package com.google.common.base;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
final class AbstractIterator$State {

    /* renamed from: b, reason: collision with root package name */
    public static final AbstractIterator$State f13013b;

    /* renamed from: e, reason: collision with root package name */
    public static final AbstractIterator$State f13014e;

    /* renamed from: f, reason: collision with root package name */
    public static final AbstractIterator$State f13015f;

    /* renamed from: j, reason: collision with root package name */
    public static final AbstractIterator$State f13016j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ AbstractIterator$State[] f13017m;

    static {
        AbstractIterator$State abstractIterator$State = new AbstractIterator$State("READY", 0);
        f13013b = abstractIterator$State;
        AbstractIterator$State abstractIterator$State2 = new AbstractIterator$State("NOT_READY", 1);
        f13014e = abstractIterator$State2;
        AbstractIterator$State abstractIterator$State3 = new AbstractIterator$State("DONE", 2);
        f13015f = abstractIterator$State3;
        AbstractIterator$State abstractIterator$State4 = new AbstractIterator$State("FAILED", 3);
        f13016j = abstractIterator$State4;
        f13017m = new AbstractIterator$State[]{abstractIterator$State, abstractIterator$State2, abstractIterator$State3, abstractIterator$State4};
    }

    public static AbstractIterator$State valueOf(String str) {
        return (AbstractIterator$State) Enum.valueOf(AbstractIterator$State.class, str);
    }

    public static AbstractIterator$State[] values() {
        return (AbstractIterator$State[]) f13017m.clone();
    }
}
