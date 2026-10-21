package j;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import k.MenuC1063H;

/* renamed from: j.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1026i extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16886a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC1020c f16887b;

    public C1026i(Context context, AbstractC1020c abstractC1020c) {
        this.f16886a = context;
        this.f16887b = abstractC1020c;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f16887b.finish();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f16887b.getCustomView();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC1063H(this.f16886a, (F.a) this.f16887b.getMenu());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f16887b.getMenuInflater();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f16887b.getSubtitle();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f16887b.getTag();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f16887b.getTitle();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f16887b.getTitleOptionalHint();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f16887b.invalidate();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f16887b.isTitleOptional();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f16887b.setCustomView(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f16887b.setSubtitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f16887b.setTag(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f16887b.setTitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z6) {
        this.f16887b.setTitleOptionalHint(z6);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i2) {
        this.f16887b.setSubtitle(i2);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i2) {
        this.f16887b.setTitle(i2);
    }
}
