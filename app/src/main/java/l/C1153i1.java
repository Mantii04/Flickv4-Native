package l;

import android.os.Handler;
import android.widget.AbsListView;

/* renamed from: l.i1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1153i1 implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1162l1 f17903a;

    public C1153i1(C1162l1 c1162l1) {
        this.f17903a = c1162l1;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 1) {
            C1162l1 c1162l1 = this.f17903a;
            if (c1162l1.isInputMethodNotNeeded() || c1162l1.f17929I.getContentView() == null) {
                return;
            }
            Handler handler = c1162l1.f17925E;
            RunnableC1159k1 runnableC1159k1 = c1162l1.f17921A;
            handler.removeCallbacks(runnableC1159k1);
            runnableC1159k1.run();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i7, int i8) {
    }
}
