package flix.com.vision.processors.english;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class BaseProcessor$TorrentServiceType {

    /* renamed from: b, reason: collision with root package name */
    public static final BaseProcessor$TorrentServiceType f16066b;

    /* renamed from: e, reason: collision with root package name */
    public static final BaseProcessor$TorrentServiceType f16067e;

    /* renamed from: f, reason: collision with root package name */
    public static final BaseProcessor$TorrentServiceType f16068f;

    /* renamed from: j, reason: collision with root package name */
    public static final BaseProcessor$TorrentServiceType f16069j;

    /* renamed from: m, reason: collision with root package name */
    public static final BaseProcessor$TorrentServiceType f16070m;

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ BaseProcessor$TorrentServiceType[] f16071n;

    static {
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType = new BaseProcessor$TorrentServiceType("REAL_DEBRID", 0);
        f16066b = baseProcessor$TorrentServiceType;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = new BaseProcessor$TorrentServiceType("PREMIUMIZE", 1);
        f16067e = baseProcessor$TorrentServiceType2;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType3 = new BaseProcessor$TorrentServiceType("ALL_DEBRID", 2);
        f16068f = baseProcessor$TorrentServiceType3;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType4 = new BaseProcessor$TorrentServiceType("TORBOX", 3);
        f16069j = baseProcessor$TorrentServiceType4;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType5 = new BaseProcessor$TorrentServiceType("OFFCLOUD", 4);
        f16070m = baseProcessor$TorrentServiceType5;
        f16071n = new BaseProcessor$TorrentServiceType[]{baseProcessor$TorrentServiceType, baseProcessor$TorrentServiceType2, baseProcessor$TorrentServiceType3, baseProcessor$TorrentServiceType4, baseProcessor$TorrentServiceType5};
    }

    public static BaseProcessor$TorrentServiceType valueOf(String str) {
        return (BaseProcessor$TorrentServiceType) Enum.valueOf(BaseProcessor$TorrentServiceType.class, str);
    }

    public static BaseProcessor$TorrentServiceType[] values() {
        return (BaseProcessor$TorrentServiceType[]) f16071n.clone();
    }
}
