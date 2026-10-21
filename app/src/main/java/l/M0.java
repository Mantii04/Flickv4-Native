package l;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import k.InterfaceC1059D;
import k.InterfaceC1082n;

/* loaded from: classes.dex */
public interface M0 {
    void collapseActionView();

    void dismissPopupMenus();

    Context getContext();

    int getDisplayOptions();

    Menu getMenu();

    ViewGroup getViewGroup();

    boolean hasExpandedActionView();

    boolean hideOverflowMenu();

    boolean isOverflowMenuShowing();

    void setDisplayOptions(int i2);

    void setMenuCallbacks(InterfaceC1059D interfaceC1059D, InterfaceC1082n interfaceC1082n);

    void setMenuPrepared();

    void setNavigationContentDescription(int i2);

    void setNavigationIcon(int i2);

    void setNavigationIcon(Drawable drawable);

    void setSubtitle(CharSequence charSequence);

    void setTitle(CharSequence charSequence);

    void setVisibility(int i2);

    void setWindowTitle(CharSequence charSequence);

    boolean showOverflowMenu();
}
