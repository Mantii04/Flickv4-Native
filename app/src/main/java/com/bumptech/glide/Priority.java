package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Priority {

    /* renamed from: b, reason: collision with root package name */
    public static final Priority f9121b;

    /* renamed from: e, reason: collision with root package name */
    public static final Priority f9122e;

    /* renamed from: f, reason: collision with root package name */
    public static final Priority f9123f;

    /* renamed from: j, reason: collision with root package name */
    public static final Priority f9124j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ Priority[] f9125m;

    static {
        Priority priority = new Priority("IMMEDIATE", 0);
        f9121b = priority;
        Priority priority2 = new Priority("HIGH", 1);
        f9122e = priority2;
        Priority priority3 = new Priority("NORMAL", 2);
        f9123f = priority3;
        Priority priority4 = new Priority("LOW", 3);
        f9124j = priority4;
        f9125m = new Priority[]{priority, priority2, priority3, priority4};
    }

    public static Priority valueOf(String str) {
        return (Priority) Enum.valueOf(Priority.class, str);
    }

    public static Priority[] values() {
        return (Priority[]) f9125m.clone();
    }
}
