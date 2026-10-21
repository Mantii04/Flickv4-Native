package B4;

import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import flix.com.vision.R;
import flix.com.vision.activities.player.SimpleVideoPlayer;

/* renamed from: B4.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0057u implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f280b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Toolbar f281e;

    public /* synthetic */ RunnableC0057u(Toolbar toolbar, int i2) {
        this.f280b = i2;
        this.f281e = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toolbar toolbar = this.f281e;
        switch (this.f280b) {
            case 0:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
                    View childAt = toolbar.getChildAt(i2);
                    if (childAt instanceof ActionMenuView) {
                        ActionMenuView actionMenuView = (ActionMenuView) childAt;
                        for (int i7 = 0; i7 < actionMenuView.getChildCount(); i7++) {
                            actionMenuView.getChildAt(i7).setBackgroundResource(R.drawable.selector_toolbar_item);
                        }
                    }
                }
                break;
            case 1:
                toolbar.collapseActionView();
                break;
            default:
                toolbar.invalidateMenu();
                break;
        }
    }
}
