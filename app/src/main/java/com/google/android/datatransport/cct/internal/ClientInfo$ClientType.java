package com.google.android.datatransport.cct.internal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ClientInfo$ClientType {

    /* renamed from: b, reason: collision with root package name */
    public static final ClientInfo$ClientType f9482b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ ClientInfo$ClientType[] f9483e;

    /* JADX INFO: Fake field, exist only in values array */
    ClientInfo$ClientType EF2;

    static {
        ClientInfo$ClientType clientInfo$ClientType = new ClientInfo$ClientType("UNKNOWN", 0);
        ClientInfo$ClientType clientInfo$ClientType2 = new ClientInfo$ClientType("ANDROID_FIREBASE", 1);
        f9482b = clientInfo$ClientType2;
        f9483e = new ClientInfo$ClientType[]{clientInfo$ClientType, clientInfo$ClientType2};
    }

    public static ClientInfo$ClientType valueOf(String str) {
        return (ClientInfo$ClientType) Enum.valueOf(ClientInfo$ClientType.class, str);
    }

    public static ClientInfo$ClientType[] values() {
        return (ClientInfo$ClientType[]) f9483e.clone();
    }
}
