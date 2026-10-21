package i4;

import android.view.View;
import android.view.ViewPropertyAnimator;
import h4.InterfaceC0986a;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class i extends AbstractC1011b {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f16733b;

    public i(View view) {
        this.f16733b = new WeakReference(view.animate());
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b alpha(float f3) {
        ViewPropertyAnimator viewPropertyAnimator = (ViewPropertyAnimator) this.f16733b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.alpha(f3);
        }
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b setDuration(long j7) {
        ViewPropertyAnimator viewPropertyAnimator = (ViewPropertyAnimator) this.f16733b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setDuration(j7);
        }
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b setListener(InterfaceC0986a interfaceC0986a) {
        ViewPropertyAnimator viewPropertyAnimator = (ViewPropertyAnimator) this.f16733b.get();
        if (viewPropertyAnimator != null) {
            if (interfaceC0986a == null) {
                viewPropertyAnimator.setListener(null);
                return this;
            }
            viewPropertyAnimator.setListener(new h(interfaceC0986a));
        }
        return this;
    }

    @Override // i4.AbstractC1011b
    public AbstractC1011b translationX(float f3) {
        ViewPropertyAnimator viewPropertyAnimator = (ViewPropertyAnimator) this.f16733b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationX(f3);
        }
        return this;
    }
}
