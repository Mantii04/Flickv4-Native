package J3;

import android.view.View;

/* loaded from: classes2.dex */
public final class i implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1525a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f1526b;

    public i(j jVar, View view) {
        this.f1526b = jVar;
        this.f1525a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        View view2 = this.f1525a;
        if (view2.getVisibility() == 0) {
            this.f1526b.c(view2);
        }
    }
}
