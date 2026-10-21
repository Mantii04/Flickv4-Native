package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class DataSource {

    /* renamed from: b, reason: collision with root package name */
    public static final DataSource f9179b;

    /* renamed from: e, reason: collision with root package name */
    public static final DataSource f9180e;

    /* renamed from: f, reason: collision with root package name */
    public static final DataSource f9181f;

    /* renamed from: j, reason: collision with root package name */
    public static final DataSource f9182j;

    /* renamed from: m, reason: collision with root package name */
    public static final DataSource f9183m;

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ DataSource[] f9184n;

    static {
        DataSource dataSource = new DataSource("LOCAL", 0);
        f9179b = dataSource;
        DataSource dataSource2 = new DataSource("REMOTE", 1);
        f9180e = dataSource2;
        DataSource dataSource3 = new DataSource("DATA_DISK_CACHE", 2);
        f9181f = dataSource3;
        DataSource dataSource4 = new DataSource("RESOURCE_DISK_CACHE", 3);
        f9182j = dataSource4;
        DataSource dataSource5 = new DataSource("MEMORY_CACHE", 4);
        f9183m = dataSource5;
        f9184n = new DataSource[]{dataSource, dataSource2, dataSource3, dataSource4, dataSource5};
    }

    public static DataSource valueOf(String str) {
        return (DataSource) Enum.valueOf(DataSource.class, str);
    }

    public static DataSource[] values() {
        return (DataSource[]) f9184n.clone();
    }
}
