package com.bumptech.glide.request;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class SingleRequest$Status {

    /* renamed from: b, reason: collision with root package name */
    public static final SingleRequest$Status f9409b;

    /* renamed from: e, reason: collision with root package name */
    public static final SingleRequest$Status f9410e;

    /* renamed from: f, reason: collision with root package name */
    public static final SingleRequest$Status f9411f;

    /* renamed from: j, reason: collision with root package name */
    public static final SingleRequest$Status f9412j;

    /* renamed from: m, reason: collision with root package name */
    public static final SingleRequest$Status f9413m;

    /* renamed from: n, reason: collision with root package name */
    public static final SingleRequest$Status f9414n;

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ SingleRequest$Status[] f9415p;

    static {
        SingleRequest$Status singleRequest$Status = new SingleRequest$Status("PENDING", 0);
        f9409b = singleRequest$Status;
        SingleRequest$Status singleRequest$Status2 = new SingleRequest$Status("RUNNING", 1);
        f9410e = singleRequest$Status2;
        SingleRequest$Status singleRequest$Status3 = new SingleRequest$Status("WAITING_FOR_SIZE", 2);
        f9411f = singleRequest$Status3;
        SingleRequest$Status singleRequest$Status4 = new SingleRequest$Status("COMPLETE", 3);
        f9412j = singleRequest$Status4;
        SingleRequest$Status singleRequest$Status5 = new SingleRequest$Status("FAILED", 4);
        f9413m = singleRequest$Status5;
        SingleRequest$Status singleRequest$Status6 = new SingleRequest$Status("CLEARED", 5);
        f9414n = singleRequest$Status6;
        f9415p = new SingleRequest$Status[]{singleRequest$Status, singleRequest$Status2, singleRequest$Status3, singleRequest$Status4, singleRequest$Status5, singleRequest$Status6};
    }

    public static SingleRequest$Status valueOf(String str) {
        return (SingleRequest$Status) Enum.valueOf(SingleRequest$Status.class, str);
    }

    public static SingleRequest$Status[] values() {
        return (SingleRequest$Status[]) f9415p.clone();
    }
}
