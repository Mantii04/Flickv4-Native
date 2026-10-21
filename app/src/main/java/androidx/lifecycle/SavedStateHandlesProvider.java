package androidx.lifecycle;

import android.os.Bundle;
import java.util.Map;
import u5.InterfaceC1707f;

/* loaded from: classes.dex */
public final class SavedStateHandlesProvider implements q1.f {

    /* renamed from: a, reason: collision with root package name */
    public final q1.g f6998a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6999b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f7000c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1707f f7001d;

    public SavedStateHandlesProvider(q1.g savedStateRegistry, final j0 viewModelStoreOwner) {
        kotlin.jvm.internal.j.checkNotNullParameter(savedStateRegistry, "savedStateRegistry");
        kotlin.jvm.internal.j.checkNotNullParameter(viewModelStoreOwner, "viewModelStoreOwner");
        this.f6998a = savedStateRegistry;
        this.f7001d = kotlin.a.lazy(new H5.a() { // from class: androidx.lifecycle.SavedStateHandlesProvider$viewModel$2
            {
                super(0);
            }

            @Override // H5.a
            public final S invoke() {
                return SavedStateHandleSupport.getSavedStateHandlesVM(j0.this);
            }
        });
    }

    public final Bundle consumeRestoredStateForKey(String key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        performRestore();
        Bundle bundle = this.f7000c;
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.f7000c;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.f7000c;
        if (bundle4 != null && bundle4.isEmpty()) {
            this.f7000c = null;
        }
        return bundle2;
    }

    public final void performRestore() {
        if (this.f6999b) {
            return;
        }
        Bundle consumeRestoredStateForKey = this.f6998a.consumeRestoredStateForKey("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f7000c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (consumeRestoredStateForKey != null) {
            bundle.putAll(consumeRestoredStateForKey);
        }
        this.f7000c = bundle;
        this.f6999b = true;
    }

    @Override // q1.f
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f7000c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry<String, Q> entry : ((S) this.f7001d.getValue()).getHandles().entrySet()) {
            String key = entry.getKey();
            Bundle saveState = entry.getValue().savedStateProvider().saveState();
            if (!kotlin.jvm.internal.j.areEqual(saveState, Bundle.EMPTY)) {
                bundle.putBundle(key, saveState);
            }
        }
        this.f6999b = false;
        return bundle;
    }
}
