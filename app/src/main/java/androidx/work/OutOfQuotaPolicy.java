package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class OutOfQuotaPolicy {

    /* renamed from: b, reason: collision with root package name */
    public static final OutOfQuotaPolicy f8265b;

    /* renamed from: e, reason: collision with root package name */
    public static final OutOfQuotaPolicy f8266e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ OutOfQuotaPolicy[] f8267f;

    static {
        OutOfQuotaPolicy outOfQuotaPolicy = new OutOfQuotaPolicy("RUN_AS_NON_EXPEDITED_WORK_REQUEST", 0);
        f8265b = outOfQuotaPolicy;
        OutOfQuotaPolicy outOfQuotaPolicy2 = new OutOfQuotaPolicy("DROP_WORK_REQUEST", 1);
        f8266e = outOfQuotaPolicy2;
        f8267f = new OutOfQuotaPolicy[]{outOfQuotaPolicy, outOfQuotaPolicy2};
    }

    public static OutOfQuotaPolicy valueOf(String str) {
        return (OutOfQuotaPolicy) Enum.valueOf(OutOfQuotaPolicy.class, str);
    }

    public static OutOfQuotaPolicy[] values() {
        return (OutOfQuotaPolicy[]) f8267f.clone();
    }
}
