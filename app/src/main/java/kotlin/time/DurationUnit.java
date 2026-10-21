package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.enums.a;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class DurationUnit {

    /* renamed from: e, reason: collision with root package name */
    public static final DurationUnit f17469e;

    /* renamed from: f, reason: collision with root package name */
    public static final DurationUnit f17470f;

    /* renamed from: j, reason: collision with root package name */
    public static final DurationUnit f17471j;

    /* renamed from: m, reason: collision with root package name */
    public static final DurationUnit f17472m;

    /* renamed from: n, reason: collision with root package name */
    public static final DurationUnit f17473n;

    /* renamed from: p, reason: collision with root package name */
    public static final DurationUnit f17474p;

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ DurationUnit[] f17475q;

    /* renamed from: b, reason: collision with root package name */
    public final TimeUnit f17476b;

    static {
        DurationUnit durationUnit = new DurationUnit("NANOSECONDS", 0, TimeUnit.NANOSECONDS);
        f17469e = durationUnit;
        DurationUnit durationUnit2 = new DurationUnit("MICROSECONDS", 1, TimeUnit.MICROSECONDS);
        DurationUnit durationUnit3 = new DurationUnit("MILLISECONDS", 2, TimeUnit.MILLISECONDS);
        f17470f = durationUnit3;
        DurationUnit durationUnit4 = new DurationUnit("SECONDS", 3, TimeUnit.SECONDS);
        f17471j = durationUnit4;
        DurationUnit durationUnit5 = new DurationUnit("MINUTES", 4, TimeUnit.MINUTES);
        f17472m = durationUnit5;
        DurationUnit durationUnit6 = new DurationUnit("HOURS", 5, TimeUnit.HOURS);
        f17473n = durationUnit6;
        DurationUnit durationUnit7 = new DurationUnit("DAYS", 6, TimeUnit.DAYS);
        f17474p = durationUnit7;
        DurationUnit[] durationUnitArr = {durationUnit, durationUnit2, durationUnit3, durationUnit4, durationUnit5, durationUnit6, durationUnit7};
        f17475q = durationUnitArr;
        a.enumEntries(durationUnitArr);
    }

    public DurationUnit(String str, int i2, TimeUnit timeUnit) {
        this.f17476b = timeUnit;
    }

    public static DurationUnit valueOf(String str) {
        return (DurationUnit) Enum.valueOf(DurationUnit.class, str);
    }

    public static DurationUnit[] values() {
        return (DurationUnit[]) f17475q.clone();
    }

    public final TimeUnit getTimeUnit$kotlin_stdlib() {
        return this.f17476b;
    }
}
