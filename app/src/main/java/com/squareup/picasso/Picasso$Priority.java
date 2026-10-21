package com.squareup.picasso;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Picasso$Priority {

    /* renamed from: b, reason: collision with root package name */
    public static final Picasso$Priority f13411b;

    /* renamed from: e, reason: collision with root package name */
    public static final Picasso$Priority f13412e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ Picasso$Priority[] f13413f;

    static {
        Picasso$Priority picasso$Priority = new Picasso$Priority("LOW", 0);
        f13411b = picasso$Priority;
        Picasso$Priority picasso$Priority2 = new Picasso$Priority("NORMAL", 1);
        f13412e = picasso$Priority2;
        f13413f = new Picasso$Priority[]{picasso$Priority, picasso$Priority2, new Picasso$Priority("HIGH", 2)};
    }

    public static Picasso$Priority valueOf(String str) {
        return (Picasso$Priority) Enum.valueOf(Picasso$Priority.class, str);
    }

    public static Picasso$Priority[] values() {
        return (Picasso$Priority[]) f13413f.clone();
    }
}
