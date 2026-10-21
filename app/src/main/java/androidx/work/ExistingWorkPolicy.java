package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ExistingWorkPolicy {

    /* renamed from: b, reason: collision with root package name */
    public static final ExistingWorkPolicy f8253b;

    /* renamed from: e, reason: collision with root package name */
    public static final ExistingWorkPolicy f8254e;

    /* renamed from: f, reason: collision with root package name */
    public static final ExistingWorkPolicy f8255f;

    /* renamed from: j, reason: collision with root package name */
    public static final ExistingWorkPolicy f8256j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ ExistingWorkPolicy[] f8257m;

    static {
        ExistingWorkPolicy existingWorkPolicy = new ExistingWorkPolicy("REPLACE", 0);
        f8253b = existingWorkPolicy;
        ExistingWorkPolicy existingWorkPolicy2 = new ExistingWorkPolicy("KEEP", 1);
        f8254e = existingWorkPolicy2;
        ExistingWorkPolicy existingWorkPolicy3 = new ExistingWorkPolicy("APPEND", 2);
        f8255f = existingWorkPolicy3;
        ExistingWorkPolicy existingWorkPolicy4 = new ExistingWorkPolicy("APPEND_OR_REPLACE", 3);
        f8256j = existingWorkPolicy4;
        f8257m = new ExistingWorkPolicy[]{existingWorkPolicy, existingWorkPolicy2, existingWorkPolicy3, existingWorkPolicy4};
    }

    public static ExistingWorkPolicy valueOf(String str) {
        return (ExistingWorkPolicy) Enum.valueOf(ExistingWorkPolicy.class, str);
    }

    public static ExistingWorkPolicy[] values() {
        return (ExistingWorkPolicy[]) f8257m.clone();
    }
}
