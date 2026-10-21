package com.google.common.collect;

/* loaded from: classes2.dex */
public final class q extends s {

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ int f13160m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ CompactHashMap f13161n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(CompactHashMap compactHashMap, int i2) {
        super(compactHashMap);
        this.f13160m = i2;
        this.f13161n = compactHashMap;
    }

    @Override // com.google.common.collect.s
    public final Object a(int i2) {
        CompactHashMap compactHashMap = this.f13161n;
        switch (this.f13160m) {
            case 0:
                Object obj = CompactHashMap.f13041s;
                return compactHashMap.i()[i2];
            case 1:
                return new u(compactHashMap, i2);
            default:
                Object obj2 = CompactHashMap.f13041s;
                return compactHashMap.j()[i2];
        }
    }
}
