package G3;

import android.graphics.Outline;
import android.graphics.Path;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes2.dex */
public final class F extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ G f1068a;

    public F(G g7) {
        this.f1068a = g7;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        Path path = this.f1068a.f1064e;
        if (path.isEmpty()) {
            return;
        }
        outline.setPath(path);
    }
}
