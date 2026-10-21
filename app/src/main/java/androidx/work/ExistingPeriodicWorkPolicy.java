package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ExistingPeriodicWorkPolicy {

    /* renamed from: b, reason: collision with root package name */
    public static final ExistingPeriodicWorkPolicy f8250b;

    /* renamed from: e, reason: collision with root package name */
    public static final ExistingPeriodicWorkPolicy f8251e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ ExistingPeriodicWorkPolicy[] f8252f;

    /* JADX INFO: Fake field, exist only in values array */
    ExistingPeriodicWorkPolicy EF4;

    static {
        ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy = new ExistingPeriodicWorkPolicy("REPLACE", 0);
        ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy2 = new ExistingPeriodicWorkPolicy("KEEP", 1);
        f8250b = existingPeriodicWorkPolicy2;
        ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy3 = new ExistingPeriodicWorkPolicy("UPDATE", 2);
        f8251e = existingPeriodicWorkPolicy3;
        f8252f = new ExistingPeriodicWorkPolicy[]{existingPeriodicWorkPolicy, existingPeriodicWorkPolicy2, existingPeriodicWorkPolicy3, new ExistingPeriodicWorkPolicy("CANCEL_AND_REENQUEUE", 3)};
    }

    public static ExistingPeriodicWorkPolicy valueOf(String str) {
        return (ExistingPeriodicWorkPolicy) Enum.valueOf(ExistingPeriodicWorkPolicy.class, str);
    }

    public static ExistingPeriodicWorkPolicy[] values() {
        return (ExistingPeriodicWorkPolicy[]) f8252f.clone();
    }
}
