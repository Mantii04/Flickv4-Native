package com.google.android.gms.common;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.common.internal.zaz;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public int f10574b;

    /* renamed from: e, reason: collision with root package name */
    public int f10575e;

    /* renamed from: f, reason: collision with root package name */
    public View f10576f;

    /* renamed from: j, reason: collision with root package name */
    public View.OnClickListener f10577j;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorScheme {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.f10577j;
        if (onClickListener == null || view != this.f10576f) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i2) {
        setStyle(this.f10574b, i2);
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
        this.f10576f.setEnabled(z6);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f10577j = onClickListener;
        View view = this.f10576f;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(Scope[] scopeArr) {
        setStyle(this.f10574b, this.f10575e);
    }

    public void setSize(int i2) {
        setStyle(i2, this.f10575e);
    }

    public void setStyle(int i2, int i7) {
        this.f10574b = i2;
        this.f10575e = i7;
        Context context = getContext();
        View view = this.f10576f;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f10576f = zaz.zaa(context, this.f10574b, this.f10575e);
        } catch (RemoteCreator.RemoteCreatorException unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i8 = this.f10574b;
            int i9 = this.f10575e;
            zaaa zaaaVar = new zaaa(context, null);
            zaaaVar.zaa(context.getResources(), i8, i9);
            this.f10576f = zaaaVar;
        }
        addView(this.f10576f);
        this.f10576f.setEnabled(isEnabled());
        this.f10576f.setOnClickListener(this);
    }
}
