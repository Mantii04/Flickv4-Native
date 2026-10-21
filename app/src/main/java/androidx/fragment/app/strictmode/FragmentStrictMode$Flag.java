package androidx.fragment.app.strictmode;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class FragmentStrictMode$Flag {

    /* renamed from: b, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6307b;

    /* renamed from: e, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6308e;

    /* renamed from: f, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6309f;

    /* renamed from: j, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6310j;

    /* renamed from: m, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6311m;

    /* renamed from: n, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6312n;

    /* renamed from: p, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6313p;

    /* renamed from: q, reason: collision with root package name */
    public static final FragmentStrictMode$Flag f6314q;

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ FragmentStrictMode$Flag[] f6315r;

    static {
        FragmentStrictMode$Flag fragmentStrictMode$Flag = new FragmentStrictMode$Flag("PENALTY_LOG", 0);
        f6307b = fragmentStrictMode$Flag;
        FragmentStrictMode$Flag fragmentStrictMode$Flag2 = new FragmentStrictMode$Flag("PENALTY_DEATH", 1);
        f6308e = fragmentStrictMode$Flag2;
        FragmentStrictMode$Flag fragmentStrictMode$Flag3 = new FragmentStrictMode$Flag("DETECT_FRAGMENT_REUSE", 2);
        f6309f = fragmentStrictMode$Flag3;
        FragmentStrictMode$Flag fragmentStrictMode$Flag4 = new FragmentStrictMode$Flag("DETECT_FRAGMENT_TAG_USAGE", 3);
        f6310j = fragmentStrictMode$Flag4;
        FragmentStrictMode$Flag fragmentStrictMode$Flag5 = new FragmentStrictMode$Flag("DETECT_RETAIN_INSTANCE_USAGE", 4);
        f6311m = fragmentStrictMode$Flag5;
        FragmentStrictMode$Flag fragmentStrictMode$Flag6 = new FragmentStrictMode$Flag("DETECT_SET_USER_VISIBLE_HINT", 5);
        f6312n = fragmentStrictMode$Flag6;
        FragmentStrictMode$Flag fragmentStrictMode$Flag7 = new FragmentStrictMode$Flag("DETECT_TARGET_FRAGMENT_USAGE", 6);
        f6313p = fragmentStrictMode$Flag7;
        FragmentStrictMode$Flag fragmentStrictMode$Flag8 = new FragmentStrictMode$Flag("DETECT_WRONG_FRAGMENT_CONTAINER", 7);
        f6314q = fragmentStrictMode$Flag8;
        f6315r = new FragmentStrictMode$Flag[]{fragmentStrictMode$Flag, fragmentStrictMode$Flag2, fragmentStrictMode$Flag3, fragmentStrictMode$Flag4, fragmentStrictMode$Flag5, fragmentStrictMode$Flag6, fragmentStrictMode$Flag7, fragmentStrictMode$Flag8};
    }

    public static FragmentStrictMode$Flag valueOf(String str) {
        return (FragmentStrictMode$Flag) Enum.valueOf(FragmentStrictMode$Flag.class, str);
    }

    public static FragmentStrictMode$Flag[] values() {
        return (FragmentStrictMode$Flag[]) f6315r.clone();
    }
}
