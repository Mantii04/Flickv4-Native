package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class NetworkType {

    /* renamed from: b, reason: collision with root package name */
    public static final NetworkType f8258b;

    /* renamed from: e, reason: collision with root package name */
    public static final NetworkType f8259e;

    /* renamed from: f, reason: collision with root package name */
    public static final NetworkType f8260f;

    /* renamed from: j, reason: collision with root package name */
    public static final NetworkType f8261j;

    /* renamed from: m, reason: collision with root package name */
    public static final NetworkType f8262m;

    /* renamed from: n, reason: collision with root package name */
    public static final NetworkType f8263n;

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ NetworkType[] f8264p;

    static {
        NetworkType networkType = new NetworkType("NOT_REQUIRED", 0);
        f8258b = networkType;
        NetworkType networkType2 = new NetworkType("CONNECTED", 1);
        f8259e = networkType2;
        NetworkType networkType3 = new NetworkType("UNMETERED", 2);
        f8260f = networkType3;
        NetworkType networkType4 = new NetworkType("NOT_ROAMING", 3);
        f8261j = networkType4;
        NetworkType networkType5 = new NetworkType("METERED", 4);
        f8262m = networkType5;
        NetworkType networkType6 = new NetworkType("TEMPORARILY_UNMETERED", 5);
        f8263n = networkType6;
        f8264p = new NetworkType[]{networkType, networkType2, networkType3, networkType4, networkType5, networkType6};
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) f8264p.clone();
    }
}
