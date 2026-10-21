package l;

import android.view.Menu;
import android.view.Window;
import k.InterfaceC1059D;

/* loaded from: classes.dex */
public interface L0 {
    boolean canShowOverflowMenu();

    void dismissPopups();

    boolean hideOverflowMenu();

    void initFeature(int i2);

    boolean isOverflowMenuShowPending();

    boolean isOverflowMenuShowing();

    void setMenu(Menu menu, InterfaceC1059D interfaceC1059D);

    void setMenuPrepared();

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    boolean showOverflowMenu();
}
