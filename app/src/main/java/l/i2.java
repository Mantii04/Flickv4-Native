package l;

import android.view.View;
import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final class i2 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17904b;

    public i2(Toolbar toolbar) {
        this.f17904b = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f17904b.collapseActionView();
    }
}
