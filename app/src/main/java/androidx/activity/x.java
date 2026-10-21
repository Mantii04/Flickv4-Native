package androidx.activity;

/* loaded from: classes.dex */
public final class x implements d {

    /* renamed from: b, reason: collision with root package name */
    public final s f4932b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OnBackPressedDispatcher f4933e;

    public x(OnBackPressedDispatcher onBackPressedDispatcher, s onBackPressedCallback) {
        kotlin.jvm.internal.j.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
        this.f4933e = onBackPressedDispatcher;
        this.f4932b = onBackPressedCallback;
    }

    @Override // androidx.activity.d
    public void cancel() {
        v5.k kVar;
        s sVar;
        OnBackPressedDispatcher onBackPressedDispatcher = this.f4933e;
        kVar = onBackPressedDispatcher.f4845c;
        s sVar2 = this.f4932b;
        kVar.remove(sVar2);
        sVar = onBackPressedDispatcher.f4846d;
        if (kotlin.jvm.internal.j.areEqual(sVar, sVar2)) {
            sVar2.handleOnBackCancelled();
            onBackPressedDispatcher.f4846d = null;
        }
        sVar2.removeCancellable(this);
        H5.a enabledChangedCallback$activity_release = sVar2.getEnabledChangedCallback$activity_release();
        if (enabledChangedCallback$activity_release != null) {
            enabledChangedCallback$activity_release.invoke();
        }
        sVar2.setEnabledChangedCallback$activity_release(null);
    }
}
