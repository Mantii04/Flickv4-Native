package com.google.android.datatransport.runtime.backends;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class BackendResponse$Status {

    /* renamed from: b, reason: collision with root package name */
    public static final BackendResponse$Status f9495b;

    /* renamed from: e, reason: collision with root package name */
    public static final BackendResponse$Status f9496e;

    /* renamed from: f, reason: collision with root package name */
    public static final BackendResponse$Status f9497f;

    /* renamed from: j, reason: collision with root package name */
    public static final BackendResponse$Status f9498j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ BackendResponse$Status[] f9499m;

    static {
        BackendResponse$Status backendResponse$Status = new BackendResponse$Status("OK", 0);
        f9495b = backendResponse$Status;
        BackendResponse$Status backendResponse$Status2 = new BackendResponse$Status("TRANSIENT_ERROR", 1);
        f9496e = backendResponse$Status2;
        BackendResponse$Status backendResponse$Status3 = new BackendResponse$Status("FATAL_ERROR", 2);
        f9497f = backendResponse$Status3;
        BackendResponse$Status backendResponse$Status4 = new BackendResponse$Status("INVALID_PAYLOAD", 3);
        f9498j = backendResponse$Status4;
        f9499m = new BackendResponse$Status[]{backendResponse$Status, backendResponse$Status2, backendResponse$Status3, backendResponse$Status4};
    }

    public static BackendResponse$Status valueOf(String str) {
        return (BackendResponse$Status) Enum.valueOf(BackendResponse$Status.class, str);
    }

    public static BackendResponse$Status[] values() {
        return (BackendResponse$Status[]) f9499m.clone();
    }
}
