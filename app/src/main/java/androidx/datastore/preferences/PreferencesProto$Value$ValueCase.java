package androidx.datastore.preferences;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class PreferencesProto$Value$ValueCase {

    /* renamed from: b, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5718b;

    /* renamed from: e, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5719e;

    /* renamed from: f, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5720f;

    /* renamed from: j, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5721j;

    /* renamed from: m, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5722m;

    /* renamed from: n, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5723n;

    /* renamed from: p, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5724p;

    /* renamed from: q, reason: collision with root package name */
    public static final PreferencesProto$Value$ValueCase f5725q;

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ PreferencesProto$Value$ValueCase[] f5726r;

    static {
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase = new PreferencesProto$Value$ValueCase("BOOLEAN", 0);
        f5718b = preferencesProto$Value$ValueCase;
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase2 = new PreferencesProto$Value$ValueCase("FLOAT", 1);
        f5719e = preferencesProto$Value$ValueCase2;
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase3 = new PreferencesProto$Value$ValueCase("INTEGER", 2);
        f5720f = preferencesProto$Value$ValueCase3;
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase4 = new PreferencesProto$Value$ValueCase("LONG", 3);
        f5721j = preferencesProto$Value$ValueCase4;
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase5 = new PreferencesProto$Value$ValueCase("STRING", 4);
        f5722m = preferencesProto$Value$ValueCase5;
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase6 = new PreferencesProto$Value$ValueCase("STRING_SET", 5);
        f5723n = preferencesProto$Value$ValueCase6;
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase7 = new PreferencesProto$Value$ValueCase("DOUBLE", 6);
        f5724p = preferencesProto$Value$ValueCase7;
        PreferencesProto$Value$ValueCase preferencesProto$Value$ValueCase8 = new PreferencesProto$Value$ValueCase("VALUE_NOT_SET", 7);
        f5725q = preferencesProto$Value$ValueCase8;
        f5726r = new PreferencesProto$Value$ValueCase[]{preferencesProto$Value$ValueCase, preferencesProto$Value$ValueCase2, preferencesProto$Value$ValueCase3, preferencesProto$Value$ValueCase4, preferencesProto$Value$ValueCase5, preferencesProto$Value$ValueCase6, preferencesProto$Value$ValueCase7, preferencesProto$Value$ValueCase8};
    }

    public static PreferencesProto$Value$ValueCase forNumber(int i2) {
        switch (i2) {
            case 0:
                return f5725q;
            case 1:
                return f5718b;
            case 2:
                return f5719e;
            case 3:
                return f5720f;
            case 4:
                return f5721j;
            case 5:
                return f5722m;
            case 6:
                return f5723n;
            case 7:
                return f5724p;
            default:
                return null;
        }
    }

    public static PreferencesProto$Value$ValueCase valueOf(String str) {
        return (PreferencesProto$Value$ValueCase) Enum.valueOf(PreferencesProto$Value$ValueCase.class, str);
    }

    public static PreferencesProto$Value$ValueCase[] values() {
        return (PreferencesProto$Value$ValueCase[]) f5726r.clone();
    }
}
