package e0;

import android.widget.EditText;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class m extends androidx.emoji2.text.l {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f13925a;

    public m(EditText editText) {
        this.f13925a = new WeakReference(editText);
    }

    @Override // androidx.emoji2.text.l
    public void onInitialized() {
        super.onInitialized();
        n.a((EditText) this.f13925a.get(), 1);
    }
}
