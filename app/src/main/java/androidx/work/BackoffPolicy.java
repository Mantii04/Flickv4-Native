package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class BackoffPolicy {

    /* renamed from: b, reason: collision with root package name */
    public static final BackoffPolicy f8247b;

    /* renamed from: e, reason: collision with root package name */
    public static final BackoffPolicy f8248e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ BackoffPolicy[] f8249f;

    static {
        BackoffPolicy backoffPolicy = new BackoffPolicy("EXPONENTIAL", 0);
        f8247b = backoffPolicy;
        BackoffPolicy backoffPolicy2 = new BackoffPolicy("LINEAR", 1);
        f8248e = backoffPolicy2;
        f8249f = new BackoffPolicy[]{backoffPolicy, backoffPolicy2};
    }

    public static BackoffPolicy valueOf(String str) {
        return (BackoffPolicy) Enum.valueOf(BackoffPolicy.class, str);
    }

    public static BackoffPolicy[] values() {
        return (BackoffPolicy[]) f8249f.clone();
    }
}
