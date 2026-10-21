package com.google.android.datatransport;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Priority {

    /* renamed from: b, reason: collision with root package name */
    public static final Priority f9478b;

    /* renamed from: e, reason: collision with root package name */
    public static final Priority f9479e;

    /* renamed from: f, reason: collision with root package name */
    public static final Priority f9480f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ Priority[] f9481j;

    static {
        Priority priority = new Priority("DEFAULT", 0);
        f9478b = priority;
        Priority priority2 = new Priority("VERY_LOW", 1);
        f9479e = priority2;
        Priority priority3 = new Priority("HIGHEST", 2);
        f9480f = priority3;
        f9481j = new Priority[]{priority, priority2, priority3};
    }

    public static Priority valueOf(String str) {
        return (Priority) Enum.valueOf(Priority.class, str);
    }

    public static Priority[] values() {
        return (Priority[]) f9481j.clone();
    }
}
