package K3;

import androidx.leanback.widget.W;
import com.google.android.material.internal.CheckableImageButton;

/* renamed from: K3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0139e extends r {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1673e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0139e(q qVar, int i2) {
        super(qVar);
        this.f1673e = i2;
    }

    @Override // K3.r
    public void m() {
        switch (this.f1673e) {
            case 0:
                q qVar = this.f1725b;
                qVar.f1721x = null;
                CheckableImageButton checkableImageButton = qVar.f1713p;
                checkableImageButton.setOnLongClickListener(null);
                W.h(checkableImageButton, null);
                break;
        }
    }
}
