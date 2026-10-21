package A3;

import android.view.View;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class e extends c0.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f29a;

    public e(k kVar) {
        this.f29a = kVar;
    }

    @Override // c0.e
    public void onDrawerClosed(View view) {
        k kVar = this.f29a;
        if (view == kVar) {
            kVar.f40E.stopListeningForBackCallbacks();
            if (!kVar.f36A || kVar.f51z == 0) {
                return;
            }
            kVar.f51z = 0;
            kVar.d(kVar.getWidth(), kVar.getHeight());
        }
    }

    @Override // c0.e
    public void onDrawerOpened(View view) {
        k kVar = this.f29a;
        if (view == kVar) {
            z3.f fVar = kVar.f40E;
            Objects.requireNonNull(fVar);
            view.post(new d(fVar, 0));
        }
    }
}
