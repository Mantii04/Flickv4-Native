package C4;

import android.view.View;
import flix.com.vision.activities.MainActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class a0 implements View.OnLongClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f636b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f637e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m1.V f638f;

    public /* synthetic */ a0(m1.V v6, int i2, int i7) {
        this.f636b = i7;
        this.f638f = v6;
        this.f637e = i2;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f636b) {
            case 0:
                c0 c0Var = (c0) this.f638f;
                c0Var.f652e.onLongPress(this.f637e, c0Var.f653f);
                return true;
            default:
                MainActivity mainActivity = ((o0) this.f638f).f758e;
                if (mainActivity == null) {
                    return false;
                }
                mainActivity.longClickMovie(this.f637e);
                return false;
        }
    }
}
