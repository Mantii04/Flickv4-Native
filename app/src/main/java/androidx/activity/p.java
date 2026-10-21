package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.C0564w;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.k0;

/* loaded from: classes.dex */
public class p extends Dialog implements InterfaceC0561t, y, q1.j {

    /* renamed from: b, reason: collision with root package name */
    public C0564w f4883b;

    /* renamed from: e, reason: collision with root package name */
    public final q1.i f4884e;

    /* renamed from: f, reason: collision with root package name */
    public final OnBackPressedDispatcher f4885f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Context context, int i2) {
        super(context, i2);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        this.f4884e = q1.i.f19558d.create(this);
        this.f4885f = new OnBackPressedDispatcher(new A3.d(this, 22));
    }

    public static void a(p this$0) {
        kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        initializeViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.lifecycle.InterfaceC0561t
    public AbstractC0557o getLifecycle() {
        C0564w c0564w = this.f4883b;
        if (c0564w != null) {
            return c0564w;
        }
        C0564w c0564w2 = new C0564w(this);
        this.f4883b = c0564w2;
        return c0564w2;
    }

    @Override // androidx.activity.y
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.f4885f;
    }

    @Override // q1.j
    public q1.g getSavedStateRegistry() {
        return this.f4884e.getSavedStateRegistry();
    }

    public void initializeViewTreeOwners() {
        Window window = getWindow();
        kotlin.jvm.internal.j.checkNotNull(window);
        View decorView = window.getDecorView();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(decorView, "window!!.decorView");
        k0.set(decorView, this);
        Window window2 = getWindow();
        kotlin.jvm.internal.j.checkNotNull(window2);
        View decorView2 = window2.getDecorView();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(decorView2, "window!!.decorView");
        A.set(decorView2, this);
        Window window3 = getWindow();
        kotlin.jvm.internal.j.checkNotNull(window3);
        View decorView3 = window3.getDecorView();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(decorView3, "window!!.decorView");
        androidx.savedstate.a.set(decorView3, this);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f4885f.onBackPressed();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            kotlin.jvm.internal.j.checkNotNullExpressionValue(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            this.f4885f.setOnBackInvokedDispatcher(onBackInvokedDispatcher);
        }
        this.f4884e.performRestore(bundle);
        C0564w c0564w = this.f4883b;
        if (c0564w == null) {
            c0564w = new C0564w(this);
            this.f4883b = c0564w;
        }
        c0564w.handleLifecycleEvent(Lifecycle$Event.ON_CREATE);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(onSaveInstanceState, "super.onSaveInstanceState()");
        this.f4884e.performSave(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        C0564w c0564w = this.f4883b;
        if (c0564w == null) {
            c0564w = new C0564w(this);
            this.f4883b = c0564w;
        }
        c0564w.handleLifecycleEvent(Lifecycle$Event.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        C0564w c0564w = this.f4883b;
        if (c0564w == null) {
            c0564w = new C0564w(this);
            this.f4883b = c0564w;
        }
        c0564w.handleLifecycleEvent(Lifecycle$Event.ON_DESTROY);
        this.f4883b = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i2) {
        initializeViewTreeOwners();
        super.setContentView(i2);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view, layoutParams);
    }
}
