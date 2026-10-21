package com.google.common.util.concurrent;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
final class AggregateFuture$ReleaseResourcesReason {

    /* renamed from: b, reason: collision with root package name */
    public static final AggregateFuture$ReleaseResourcesReason f13186b;

    /* renamed from: e, reason: collision with root package name */
    public static final AggregateFuture$ReleaseResourcesReason f13187e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AggregateFuture$ReleaseResourcesReason[] f13188f;

    static {
        AggregateFuture$ReleaseResourcesReason aggregateFuture$ReleaseResourcesReason = new AggregateFuture$ReleaseResourcesReason("OUTPUT_FUTURE_DONE", 0);
        f13186b = aggregateFuture$ReleaseResourcesReason;
        AggregateFuture$ReleaseResourcesReason aggregateFuture$ReleaseResourcesReason2 = new AggregateFuture$ReleaseResourcesReason("ALL_INPUT_FUTURES_PROCESSED", 1);
        f13187e = aggregateFuture$ReleaseResourcesReason2;
        f13188f = new AggregateFuture$ReleaseResourcesReason[]{aggregateFuture$ReleaseResourcesReason, aggregateFuture$ReleaseResourcesReason2};
    }

    public static AggregateFuture$ReleaseResourcesReason valueOf(String str) {
        return (AggregateFuture$ReleaseResourcesReason) Enum.valueOf(AggregateFuture$ReleaseResourcesReason.class, str);
    }

    public static AggregateFuture$ReleaseResourcesReason[] values() {
        return (AggregateFuture$ReleaseResourcesReason[]) f13188f.clone();
    }
}
