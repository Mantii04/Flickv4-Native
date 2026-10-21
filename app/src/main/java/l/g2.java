package l;

import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final class g2 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17896b;

    public g2(Toolbar toolbar) {
        this.f17896b = toolbar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f17896b.showOverflowMenu();
    }
}
