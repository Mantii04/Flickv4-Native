package com.squareup.picasso;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class NetworkPolicy {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ NetworkPolicy[] f13405b = {new NetworkPolicy("NO_CACHE", 0), new NetworkPolicy("NO_STORE", 1), new NetworkPolicy("OFFLINE", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    NetworkPolicy EF7;

    public static boolean isOfflineOnly(int i2) {
        return (i2 & 4) != 0;
    }

    public static boolean shouldReadFromDiskCache(int i2) {
        return (i2 & 1) == 0;
    }

    public static boolean shouldWriteToDiskCache(int i2) {
        return (i2 & 2) == 0;
    }

    public static NetworkPolicy valueOf(String str) {
        return (NetworkPolicy) Enum.valueOf(NetworkPolicy.class, str);
    }

    public static NetworkPolicy[] values() {
        return (NetworkPolicy[]) f13405b.clone();
    }
}
