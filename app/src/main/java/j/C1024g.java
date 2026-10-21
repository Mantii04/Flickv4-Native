package j;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import k.C1084p;
import k.InterfaceC1082n;

/* renamed from: j.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1024g extends AbstractC1020c implements InterfaceC1082n {

    /* renamed from: f, reason: collision with root package name */
    public final Context f16876f;

    /* renamed from: j, reason: collision with root package name */
    public final ActionBarContextView f16877j;

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC1019b f16878m;

    /* renamed from: n, reason: collision with root package name */
    public WeakReference f16879n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16880p;

    /* renamed from: q, reason: collision with root package name */
    public final C1084p f16881q;

    public C1024g(Context context, ActionBarContextView actionBarContextView, InterfaceC1019b interfaceC1019b, boolean z6) {
        this.f16876f = context;
        this.f16877j = actionBarContextView;
        this.f16878m = interfaceC1019b;
        C1084p defaultShowAsAction = new C1084p(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.f16881q = defaultShowAsAction;
        defaultShowAsAction.setCallback(this);
    }

    @Override // j.AbstractC1020c
    public void finish() {
        if (this.f16880p) {
            return;
        }
        this.f16880p = true;
        this.f16878m.onDestroyActionMode(this);
    }

    @Override // j.AbstractC1020c
    public View getCustomView() {
        WeakReference weakReference = this.f16879n;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // j.AbstractC1020c
    public Menu getMenu() {
        return this.f16881q;
    }

    @Override // j.AbstractC1020c
    public MenuInflater getMenuInflater() {
        return new C1029l(this.f16877j.getContext());
    }

    @Override // j.AbstractC1020c
    public CharSequence getSubtitle() {
        return this.f16877j.getSubtitle();
    }

    @Override // j.AbstractC1020c
    public CharSequence getTitle() {
        return this.f16877j.getTitle();
    }

    @Override // j.AbstractC1020c
    public void invalidate() {
        this.f16878m.onPrepareActionMode(this, this.f16881q);
    }

    @Override // j.AbstractC1020c
    public boolean isTitleOptional() {
        return this.f16877j.isTitleOptional();
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        return this.f16878m.onActionItemClicked(this, menuItem);
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
        invalidate();
        this.f16877j.showOverflowMenu();
    }

    @Override // j.AbstractC1020c
    public void setCustomView(View view) {
        this.f16877j.setCustomView(view);
        this.f16879n = view != null ? new WeakReference(view) : null;
    }

    @Override // j.AbstractC1020c
    public void setSubtitle(CharSequence charSequence) {
        this.f16877j.setSubtitle(charSequence);
    }

    @Override // j.AbstractC1020c
    public void setTitle(CharSequence charSequence) {
        this.f16877j.setTitle(charSequence);
    }

    @Override // j.AbstractC1020c
    public void setTitleOptionalHint(boolean z6) {
        super.setTitleOptionalHint(z6);
        this.f16877j.setTitleOptional(z6);
    }

    @Override // j.AbstractC1020c
    public void setSubtitle(int i2) {
        setSubtitle(this.f16876f.getString(i2));
    }

    @Override // j.AbstractC1020c
    public void setTitle(int i2) {
        setTitle(this.f16876f.getString(i2));
    }
}
