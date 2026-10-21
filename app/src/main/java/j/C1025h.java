package j;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;
import k.MenuC1063H;
import k.y;

/* renamed from: j.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1025h implements InterfaceC1019b {

    /* renamed from: a, reason: collision with root package name */
    public final ActionMode.Callback f16882a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f16883b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16884c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final p.q f16885d = new p.q();

    public C1025h(Context context, ActionMode.Callback callback) {
        this.f16883b = context;
        this.f16882a = callback;
    }

    public ActionMode getActionModeWrapper(AbstractC1020c abstractC1020c) {
        ArrayList arrayList = this.f16884c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1026i c1026i = (C1026i) arrayList.get(i2);
            if (c1026i != null && c1026i.f16887b == abstractC1020c) {
                return c1026i;
            }
        }
        C1026i c1026i2 = new C1026i(this.f16883b, abstractC1020c);
        arrayList.add(c1026i2);
        return c1026i2;
    }

    @Override // j.InterfaceC1019b
    public boolean onActionItemClicked(AbstractC1020c abstractC1020c, MenuItem menuItem) {
        return this.f16882a.onActionItemClicked(getActionModeWrapper(abstractC1020c), new y(this.f16883b, (F.b) menuItem));
    }

    @Override // j.InterfaceC1019b
    public boolean onCreateActionMode(AbstractC1020c abstractC1020c, Menu menu) {
        ActionMode actionModeWrapper = getActionModeWrapper(abstractC1020c);
        p.q qVar = this.f16885d;
        Menu menu2 = (Menu) qVar.get(menu);
        if (menu2 == null) {
            menu2 = new MenuC1063H(this.f16883b, (F.a) menu);
            qVar.put(menu, menu2);
        }
        return this.f16882a.onCreateActionMode(actionModeWrapper, menu2);
    }

    @Override // j.InterfaceC1019b
    public void onDestroyActionMode(AbstractC1020c abstractC1020c) {
        this.f16882a.onDestroyActionMode(getActionModeWrapper(abstractC1020c));
    }

    @Override // j.InterfaceC1019b
    public boolean onPrepareActionMode(AbstractC1020c abstractC1020c, Menu menu) {
        ActionMode actionModeWrapper = getActionModeWrapper(abstractC1020c);
        p.q qVar = this.f16885d;
        Menu menu2 = (Menu) qVar.get(menu);
        if (menu2 == null) {
            menu2 = new MenuC1063H(this.f16883b, (F.a) menu);
            qVar.put(menu, menu2);
        }
        return this.f16882a.onPrepareActionMode(actionModeWrapper, menu2);
    }
}
