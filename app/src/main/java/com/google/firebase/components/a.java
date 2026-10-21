package com.google.firebase.components;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements ComponentFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13222a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13223b;

    public /* synthetic */ a(Object obj, int i2) {
        this.f13222a = i2;
        this.f13223b = obj;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        Object lambda$of$2;
        Object lambda$intoSet$4;
        Object lambda$intoSet$3;
        Object lambda$of$0;
        Object lambda$of$1;
        switch (this.f13222a) {
            case 0:
                lambda$of$2 = Component.lambda$of$2(this.f13223b, componentContainer);
                return lambda$of$2;
            case 1:
                lambda$intoSet$4 = Component.lambda$intoSet$4(this.f13223b, componentContainer);
                return lambda$intoSet$4;
            case 2:
                lambda$intoSet$3 = Component.lambda$intoSet$3(this.f13223b, componentContainer);
                return lambda$intoSet$3;
            case 3:
                lambda$of$0 = Component.lambda$of$0(this.f13223b, componentContainer);
                return lambda$of$0;
            default:
                lambda$of$1 = Component.lambda$of$1(this.f13223b, componentContainer);
                return lambda$of$1;
        }
    }
}
