package k;

import android.content.Context;
import android.os.Parcelable;

/* renamed from: k.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1060E {
    boolean collapseItemActionView(C1084p c1084p, s sVar);

    boolean expandItemActionView(C1084p c1084p, s sVar);

    boolean flagActionItems();

    int getId();

    void initForMenu(Context context, C1084p c1084p);

    void onCloseMenu(C1084p c1084p, boolean z6);

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();

    boolean onSubMenuSelected(SubMenuC1068M subMenuC1068M);

    void setCallback(InterfaceC1059D interfaceC1059D);

    void updateMenuView(boolean z6);
}
