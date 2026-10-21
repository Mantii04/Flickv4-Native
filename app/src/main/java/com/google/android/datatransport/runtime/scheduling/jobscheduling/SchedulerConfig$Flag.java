package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class SchedulerConfig$Flag {

    /* renamed from: b, reason: collision with root package name */
    public static final SchedulerConfig$Flag f9511b;

    /* renamed from: e, reason: collision with root package name */
    public static final SchedulerConfig$Flag f9512e;

    /* renamed from: f, reason: collision with root package name */
    public static final SchedulerConfig$Flag f9513f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ SchedulerConfig$Flag[] f9514j;

    static {
        SchedulerConfig$Flag schedulerConfig$Flag = new SchedulerConfig$Flag("NETWORK_UNMETERED", 0);
        f9511b = schedulerConfig$Flag;
        SchedulerConfig$Flag schedulerConfig$Flag2 = new SchedulerConfig$Flag("DEVICE_IDLE", 1);
        f9512e = schedulerConfig$Flag2;
        SchedulerConfig$Flag schedulerConfig$Flag3 = new SchedulerConfig$Flag("DEVICE_CHARGING", 2);
        f9513f = schedulerConfig$Flag3;
        f9514j = new SchedulerConfig$Flag[]{schedulerConfig$Flag, schedulerConfig$Flag2, schedulerConfig$Flag3};
    }

    public static SchedulerConfig$Flag valueOf(String str) {
        return (SchedulerConfig$Flag) Enum.valueOf(SchedulerConfig$Flag.class, str);
    }

    public static SchedulerConfig$Flag[] values() {
        return (SchedulerConfig$Flag[]) f9514j.clone();
    }
}
