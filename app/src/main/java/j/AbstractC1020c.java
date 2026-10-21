package j;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

/* renamed from: j.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1020c {

    /* renamed from: b, reason: collision with root package name */
    public Object f16868b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f16869e;

    public abstract void finish();

    public abstract View getCustomView();

    public abstract Menu getMenu();

    public abstract MenuInflater getMenuInflater();

    public abstract CharSequence getSubtitle();

    public Object getTag() {
        return this.f16868b;
    }

    public abstract CharSequence getTitle();

    public boolean getTitleOptionalHint() {
        return this.f16869e;
    }

    public abstract void invalidate();

    public abstract boolean isTitleOptional();

    public abstract void setCustomView(View view);

    public abstract void setSubtitle(int i2);

    public abstract void setSubtitle(CharSequence charSequence);

    public void setTag(Object obj) {
        this.f16868b = obj;
    }

    public abstract void setTitle(int i2);

    public abstract void setTitle(CharSequence charSequence);

    public void setTitleOptionalHint(boolean z6) {
        this.f16869e = z6;
    }
}
